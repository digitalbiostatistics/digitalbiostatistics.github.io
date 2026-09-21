# Run after Jekyll: bundle exec ruby tests/check_locales.rb _site
require 'nokogiri'
require 'json'
require 'uri'
root = ARGV.fetch(0, '_site')
languages = %w[es gl zh ar ru pl]
pages = ['index.html', '404.html'] + %w[research projects team blog contact philosophy teaching mbzuai].map { |p| "#{p}/index.html" }
pages += Dir.glob('projects/*/index.html', base: root)
pages += Dir.glob('members/*.html', base: root) + Dir.glob('[0-9][0-9][0-9][0-9]/**/*.html', base: root)
errors = []
dictionaries = languages.to_h do |lang|
  entries = JSON.parse(File.read("_data/locales/#{lang}.json", encoding: 'UTF-8'))
  dictionary = entries.to_h { |e| [e['source'], e['translation']] }
  errors << "Duplicate translations: #{lang}" unless entries.size == dictionary.size
  entries.each do |entry|
    source_tokens = entry['source'].scan(/\{\w+\}/).sort
    translation_tokens = entry['translation'].scan(/\{\w+\}/).sort
    errors << "Invalid translation placeholders: #{lang}: #{entry['source']}" unless source_tokens == translation_tokens
  end
  [lang, dictionary]
end
languages.each { |l| errors << "Missing base translations: #{l}" unless (dictionaries['es'].keys - dictionaries[l].keys).empty? }
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
    choices = doc.css('.language-menu-dropdown a[lang]').to_h { |a| [a['lang'], a['href']] }
    ['en', *languages].each do |target_lang|
      prefix = target_lang == 'en' ? '/' : "/#{target_lang}/"
      expected = prefix + path.sub(/index\.html\z/, '')
      errors << "Wrong language switch: #{file} -> #{target_lang}" unless choices[target_lang] == expected
    end
    errors << "Different headings: #{file}" unless doc.css('main h1,main h2,main h3').size == english.css('main h1,main h2,main h3').size
    errors << "Different images: #{file}" unless doc.css('main img').map { |n| n['src'] } == english.css('main img').map { |n| n['src'] }
    english_publishers = english.css('.citation-publisher').map { |n| n.text.strip }
    translated_publishers = doc.css('.citation-publisher').map { |n| n.text.strip }
    publishers_match = english_publishers.zip(translated_publishers).all? do |original, translated|
      %w[Unpublished Preprint].include?(original) || original.start_with?('[') || original == translated
    end
    errors << "Journal names changed: #{file}" unless publishers_match && english_publishers.size == translated_publishers.size
    if lang == 'ar'
      errors << "Wrong Arabic logo: #{file}" unless doc.at_css('.mbzuai-university img')['src'].end_with?('/logo-mbzuai-ar-navy.svg')
    end
    if %w[ru pl].include?(lang)
      expected_locale = lang == 'ru' ? 'ru_RU' : 'pl_PL'
      errors << "Wrong social locale: #{file}" unless doc.at_css('meta[property="og:locale"]')['content'] == expected_locale
      errors << "Untranslated news date: #{file}" if doc.css('.post-info').text.match?(/\b(?:January|February|March|April|May|June|July|August|September|October|November|December) \d{2}, \d{4}/)
    end
    if path == 'index.html'
      errors << "Missing italic quote: #{file}" unless doc.at_css('.mbzuai-intro-strip em')
      errors << "Reading image duplicated/missing: #{file}" unless doc.css('.mbzuai-reading-image img').size == 1
      titles = { 'es' => 'Bioestadística Digital', 'gl' => 'Bioestatística Dixital', 'zh' => '数字 生物统计学', 'ar' => 'الإحصاء الحيوي الرقمي', 'ru' => 'Цифровая биостатистика', 'pl' => 'Biostatystyka cyfrowa' }
      hero_title = doc.at_css('#mbzuai-hero-title')&.xpath('.//text()')&.map { |n| n.text.strip }&.join(' ')
      errors << "Wrong hero title: #{file}" unless hero_title == titles.fetch(lang)
      errors << 'Wrong English hero title' unless english.at_css('#mbzuai-hero-title')&.text == 'DigitalBiostatistics'
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
      # These context-specific hero mappings can themselves produce "Digital".
      # The complete hero title and journal names are verified separately above.
      next if %w[Digital Biostatistics].include?(text)
      errors << "Untranslated text: #{file}: #{text[0,90]}" if dictionaries[lang].key?(text) && dictionaries[lang][text] != text
      errors << "Invalid text encoding: #{file}" if text.include?("\uFFFD") || text.include?('â€') || text.include?('Â·')
      errors << "Filename used as a person's name: #{file}" if text.include?('.md') && path.start_with?('members/')
    end
  end
end
abort errors.uniq.join("\n") unless errors.empty?
puts "Passed: #{pages.size} English pages and #{pages.size * languages.size} translated pages; structure, images, links, language, logos and text."
