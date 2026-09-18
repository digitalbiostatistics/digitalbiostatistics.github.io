# Run after Jekyll: bundle exec ruby tests/check_locales.rb _site
require 'nokogiri'
require 'json'
require 'uri'
root = ARGV.fetch(0, '_site')
languages = %w[es gl zh ar]
pages = ['index.html', '404.html'] + %w[research projects team blog contact philosophy teaching mbzuai].map { |p| "#{p}/index.html" }
pages += Dir.glob('members/*.html', base: root) + Dir.glob('[0-9][0-9][0-9][0-9]/**/*.html', base: root)
errors = []
dictionaries = languages.to_h do |lang|
  entries = JSON.parse(File.read("_data/locales/#{lang}.json", encoding: 'UTF-8'))
  dictionary = entries.to_h { |e| [e['source'], e['translation']] }
  errors << "Duplicate translations: #{lang}" unless entries.size == dictionary.size
  [lang, dictionary]
end
languages.each { |l| errors << "Different translation coverage: #{l}" unless dictionaries[l].keys.sort == dictionaries['es'].keys.sort }
pages.each do |path|
  english = Nokogiri::HTML(File.read(File.join(root, path), encoding: 'UTF-8'))
  languages.each do |lang|
    file = File.join(root, lang, path)
    unless File.exist?(file)
      errors << "Missing page: #{lang}/#{path}"
      next
    end
    doc = Nokogiri::HTML(File.read(file, encoding: 'UTF-8'))
    html = doc.at_css('html')
    errors << "Wrong language/direction: #{file}" unless html['lang'] == lang && html['dir'] == (lang == 'ar' ? 'rtl' : 'ltr')
    errors << "Missing brand theme: #{file}" unless html['class'].include?('mbzuai-theme')
    errors << "Different headings: #{file}" unless doc.css('main h1,main h2,main h3').size == english.css('main h1,main h2,main h3').size
    errors << "Different images: #{file}" unless doc.css('main img').map { |n| n['src'] } == english.css('main img').map { |n| n['src'] }
    if lang == 'ar'
      errors << "Wrong Arabic logo: #{file}" unless doc.at_css('.mbzuai-university img')['src'].end_with?('/logo-mbzuai-ar-navy.svg')
    end
    if path == 'index.html'
      errors << "Missing italic quote: #{file}" unless doc.at_css('.mbzuai-intro-strip em')
      errors << "Reading image duplicated/missing: #{file}" unless doc.css('.mbzuai-reading-image img').size == 1
    end
    doc.css('a[href]').each do |a|
      next unless a['href'].start_with?("/#{lang}/")
      target = URI::DEFAULT_PARSER.unescape(a['href'].split(/[?#]/)[0]).delete_prefix('/')
      target += 'index.html' if target.end_with?('/')
      errors << "Broken link #{file}: #{a['href']}" unless File.exist?(File.join(root, target))
    end
    doc.css('script,style,.citation,.highlighted-paper-title,.highlighted-paper-authors,.language-menu-dropdown').remove
    doc.xpath('//text()').each do |node|
      text = node.text.gsub(/[[:space:]]+/, ' ').strip
      errors << "Untranslated text: #{file}: #{text[0,90]}" if dictionaries[lang].key?(text) && dictionaries[lang][text] != text
      errors << "Invalid text encoding: #{file}" if text.include?("\uFFFD") || text.include?('â€') || text.include?('Â·')
      errors << "Filename used as a person's name: #{file}" if text.include?('.md') && path.start_with?('members/')
    end
  end
end
abort errors.uniq.join("\n") unless errors.empty?
puts "Passed: #{pages.size} English pages and #{pages.size * languages.size} translated pages; structure, images, links, language, logos and text."
