# Run after Jekyll: bundle exec ruby tests/check_password_pages.rb _site
require 'nokogiri'
require 'json'
require 'yaml'

root = ARGV.fetch(0, '_site')
languages = %w[en es gl zh ar ru pl]
password_hashes = YAML.safe_load(File.read('_config.yaml'))['section_password_hashes']
expected_sections = %w[team projects education philosophy]
abort 'Missing section passwords' unless password_hashes&.keys&.sort == expected_sections.sort
abort 'Section passwords must be distinct SHA-256 hashes' unless password_hashes.values.uniq.size == 4 && password_hashes.values.all? { |hash| hash.match?(/\A[0-9a-f]{64}\z/) }
protected_pages = {
  'team/index.html' => 'team',
  'projects/index.html' => 'projects',
  'teaching/index.html' => 'education',
  'philosophy/index.html' => 'philosophy'
}
%w[team projects teaching philosophy members].each do |directory|
  section = { 'members' => 'team', 'teaching' => 'education' }.fetch(directory, directory)
  Dir.glob("#{directory}/**/*.html", base: root).each { |path| protected_pages[path] = section }
end
english_pages = Dir.glob('**/*.html', base: root).reject { |path| path.match?(%r{\A(es|gl|zh|ar|ru|pl)/}) }
errors = []
counts = Hash.new(0)
message = 'This section is password-protected. Please enter the password to continue.'

abort 'No generated site found' if english_pages.empty?
languages.each do |lang|
  prefix = lang == 'en' ? '' : "#{lang}/"
  dictionary = if lang == 'en'
                 {}
               else
                 JSON.parse(File.read("_data/locales/#{lang}.json", encoding: 'UTF-8')).to_h { |entry| [entry['source'], entry['translation']] }
               end
  english_pages.each do |path|
    file = File.join(root, prefix, path)
    unless File.exist?(file)
      errors << "Missing translated page: #{file}"
      next
    end
    doc = Nokogiri::HTML(File.read(file, encoding: 'UTF-8'))
    next unless doc.at_css('html')&.[]('class').to_s.include?('mbzuai-theme')

    section = protected_pages[path]
    protected = !section.nil?
    gates = doc.css('[data-password-gate]')
    locked = doc.at_css('html')['class'].split.include?('is-password-locked')
    scripts = doc.css('script[src]').select { |script| script['src'].split('?').first.end_with?('/_scripts/password-gate.js') }
    errors << "Wrong password boundary: #{file}" unless gates.size == (protected ? 1 : 0) && locked == protected && scripts.size == (protected ? 1 : 0)
    counts[protected ? 'protected' : 'public'] += 1
    if protected && gates.size == 1
      gate = gates.first
      password_hash = password_hashes.fetch(section)
      storage_key = "digitalbiostatistics:section-unlocked:#{section}"
      errors << "Wrong section password: #{file}" unless gate['data-password-hash'] == password_hash
      errors << "Wrong remembered-access scope: #{file}" unless gate['data-password-storage-key'] == storage_key
      startup = doc.css('script:not([src])').find { |script| script.text.include?('var storageKey =') }&.text.to_s
      errors << "Wrong startup scope: #{file}" unless startup.include?("var storageKey = #{storage_key.to_json};") && startup.include?("var expectedHash = #{password_hash.to_json};")
      errors << "Another section password exposed: #{file}" if password_hashes.values.reject { |hash| hash == password_hash }.any? { |hash| doc.to_html.include?(hash) }
      errors << "Missing input: #{file}" unless gate.at_css('input[type=password][required]')
      errors << "Wrong translated message: #{file}" unless gate.at_css('.password-gate-message')&.text&.strip == dictionary.fetch(message, message)
      home = gate.at_css('.password-gate-home')
      errors << "Wrong public home link: #{file}" unless home && home['href'] == "/#{prefix}" && home.text.strip == dictionary.fetch('Return to home', 'Return to home')
    elsif !protected
      errors << "Password configuration on public page: #{file}" if password_hashes.values.any? { |hash| doc.to_html.include?(hash) }
    end
  end
end
abort errors.uniq.join("\n") unless errors.empty?
puts "Passed: #{counts['protected']} protected pages and #{counts['public']} public pages across all #{languages.size} languages; four independent password scopes, scripts, translations and return links."
