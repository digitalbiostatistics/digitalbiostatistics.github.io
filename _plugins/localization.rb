# Keep translated pages structurally identical to the English source. Editorial
# translations live in _data/locales; no translation service runs in the browser.
require 'nokogiri'
require 'json'

module SiteLocalization
  LANGUAGES = %w[es gl zh ar ru pl].freeze
  ENGLISH_MONTHS = %w[January February March April May June July August September October November December].freeze
  DATE_MONTHS = {
    'ru' => %w[января февраля марта апреля мая июня июля августа сентября октября ноября декабря],
    'pl' => %w[stycznia lutego marca kwietnia maja czerwca lipca sierpnia września października listopada grudnia]
  }.freeze
  def self.normalize(text)
    text.to_s.gsub(/[[:space:]]+/, ' ').strip
  end

  class Pages < Jekyll::Generator
    safe true
    priority :low
    def generate(site)
      sources = site.pages.select { |p| (p.data['lang'] || 'en') == 'en' && p.ext == '.md' }
      sources += site.collections['members'].docs + site.posts.docs
      site.config['localized_urls'] = sources.map(&:url)
      sources.each do |source|
        source.data['translation_key'] ||= source.url
        source.data['lang'] ||= 'en'
        LANGUAGES.each do |lang|
          url = "/#{lang}#{source.url}"
          page = site.pages.find { |p| p.url == url }
          unless page
            dir = File.dirname(url)
            name = File.basename(url)
            if url.end_with?('/')
              dir = url
              name = 'index.html'
            end
            name = name.sub(/\.html$/, '.md')
            page = Jekyll::PageWithoutAFile.new(site, site.source, dir.sub(%r{^/}, ''), name)
            site.pages << page
          end
          page.content = source.content
          page.data = source.data.reject { |k, _| %w[redirect_from permalink].include?(k) }.merge(
            'lang' => lang, 'permalink' => url, 'english_url' => source.url,
            'translation_key' => source.data['translation_key'],
            'layout' => source.data['layout'] || 'default'
          )
          # Page objects do not inherit document drops such as member slugs.
          page.data['slug'] = source.data['slug'] || source.basename_without_ext if source.respond_to?(:basename_without_ext)
          page.data['date'] = source.date if source.respond_to?(:date)
          if source.data['name']
            page.data['display_name'] = source.data['name']
            page.data['aliases'] = source.data['aliases'] || [source.data['name']]
          end
          if source.respond_to?(:previous_doc)
            page.data['previous'] = source.previous_doc
            page.data['next'] = source.next_doc
          end
        end
      end
      # Preserve the old misspelled Arabic university URL as an alias.
      old = site.pages.find { |p| p.url == '/ar/mbuzai/' }
      if old
        old.content = '<meta http-equiv="refresh" content="0; url=../mbzuai/">'
        old.data = { 'layout' => nil, 'sitemap' => false }
      end
    end
  end

  def self.render(page)
    lang = page.data['lang']
    return unless LANGUAGES.include?(lang) && page.output.to_s.include?('<html')
    site = page.site
    dictionary = (site.data.dig('locales', lang) || []).to_h { |entry| [entry['source'], entry['translation']] }
    translate = ->(s) { dictionary.fetch(normalize(s), s) }
    doc = Nokogiri::HTML(page.output)
    doc.css('a.tag').each do |tag|
      key = normalize(tag.text)
      tag['data-tag-key'] = key
      tag.content = translate.call(key.tr('-', ' '))
      tag['data-tooltip'] = dictionary.fetch('Show items tagged {tag}', '{tag}').gsub('{tag}', tag.text)
    end
    doc.xpath('//text()').each do |node|
      next if node.ancestors.any? { |a| %w[script style code pre].include?(a.name) }
      key = normalize(node.text)
      # The two hero lines reverse word order in some languages. Their mappings
      # must not translate journal names such as "Biostatistics" elsewhere.
      next if %w[Digital Biostatistics].include?(key) && !node.ancestors.any? { |a| a['id'] == 'mbzuai-hero-title' }
      if dictionary.key?(key)
        leading = node.text[/\A[[:space:]]*/]
        trailing = node.text[/[[:space:]]*\z/]
        node.content = leading + dictionary[key] + trailing
      elsif DATE_MONTHS.key?(lang) && node.ancestors.any? { |a| a['class'].to_s.split.include?('post-info') } && (date = key.match(/\A([A-Z][a-z]+) (\d{2}), (\d{4})\z/)) && (month = ENGLISH_MONTHS.index(date[1]))
        node.content = "#{date[2].to_i} #{DATE_MONTHS[lang][month]} #{date[3]}#{lang == 'ru' ? ' года' : ''}"
      elsif key.start_with?('Search for ') && key.end_with?("'s papers on the Research page")
        name = key.delete_prefix('Search for ').delete_suffix("'s papers on the Research page")
        node.content = dictionary.fetch('Search papers by {name}', 'Search papers by {name}').gsub('{name}', name)
      elsif node.parent.name == 'title'
        node.content = node.text.split(' | ').map { |s| translate.call(s) }.join(' | ')
      end
    end
    doc.css('[aria-label],[placeholder],[data-tooltip],[alt],[title],[data-search]').each do |node|
      %w[aria-label placeholder data-tooltip alt title data-search].each do |attr|
        next unless node[attr]
        node[attr] = translate.call(node[attr])
        ['Open profile of ', 'Portrait of ', 'Open paper: ', 'Abstract of ', 'Summary card for '].each do |prefix|
          if node[attr].start_with?(prefix)
            name = node[attr].delete_prefix(prefix)
            node[attr] = dictionary.fetch(prefix + '{name}', prefix + '{name}').gsub('{name}', name)
          end
        end
        %w[publication testimonial quote slide].each do |noun|
          node[attr] = node[attr].sub(/^Show #{noun} (\d+)$/) { dictionary.fetch("Show #{noun} {n}", "Show #{noun} {n}").gsub('{n}', Regexp.last_match(1)) }
        end
      end
    end
    base = site.baseurl.to_s
    routes = site.config['localized_urls'] || []
    doc.css('a[href]').each do |a|
      a['aria-label'] = normalize(a.text) if a['aria-label'].to_s.start_with?('fa-') && !normalize(a.text).empty?
      next if a['lang'] # language choices must retain their destinations
      href = a['href']
      next unless href.start_with?('/') && !href.start_with?('//')
      path, suffix = href.split(/(?=[?#])/, 2)
      path = path.delete_prefix(base) unless base.empty?
      path += '/' if !routes.include?(path) && routes.include?(path + '/')
      a['href'] = "#{base}/#{lang}#{path}#{suffix}" if routes.include?(path)
    end
    doc.css('.portrait').each do |portrait|
      if portrait.at_css('.portrait-name')&.text&.strip == 'Yasmeena Akhter'
        portrait.at_css('.portrait-description').content = { 'es'=>'Investigadora visitante', 'gl'=>'Investigadora visitante', 'zh'=>'访问研究员', 'ar'=>'باحثة زائرة', 'ru'=>'Приглашённая исследовательница', 'pl'=>'Badaczka wizytująca' }[lang]
      end
    end
    # Localize dynamic controls with the same reviewed dictionary.
    data = Nokogiri::XML::Node.new('script', doc)
    data['type'] = 'application/json'
    data['id'] = 'site-translations'
    dynamic_keys = ['Play music', 'Pause music', 'Play background music', 'Pause background music', 'Clear search', 'Showing {x} of {n} results', 'link to this section']
    data.content = JSON.generate(dictionary.select { |key, _| dynamic_keys.include?(key) }).gsub('<', '\\u003c')
    doc.at_css('head').add_child(data)
    doc.css('meta[name="title"],meta[name="description"],meta[property$=":title"],meta[property$=":description"]').each { |n| n['content'] = translate.call(n['content']) }
    doc.at_css('meta[property="og:locale"]')['content'] = { 'es'=>'es_ES', 'gl'=>'gl_ES', 'zh'=>'zh_CN', 'ar'=>'ar_AE', 'ru'=>'ru_RU', 'pl'=>'pl_PL' }[lang]
    page.output = doc.to_html
  end
end
Jekyll::Hooks.register [:pages, :documents], :post_render do |page|
  SiteLocalization.render(page)
end
