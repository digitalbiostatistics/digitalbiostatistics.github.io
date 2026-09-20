# Run after Jekyll: bundle exec ruby tests/check_password_pages.rb _site
require 'nokogiri'
require 'json'
require 'yaml'

root = ARGV.fetch(0, '_site')
languages = %w[en es gl zh ar]
password_hash = YAML.safe_load(File.read('_config.yaml'))['site_password_hash']
protected_pages = %w[team/index.html projects/index.html]
protected_pages += Dir.glob('members/*.html', base: root)
protected_pages += Dir.glob('projects/**/index.html', base: root)
protected_pages.uniq!
english_pages = Dir.glob('**/*.html', base: root).reject { |path| path.match?(%r{\A(es|gl|zh|ar)/}) }
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

    protected = protected_pages.include?(path)
    gates = doc.css('[data-password-gate]')
    locked = doc.at_css('html')['class'].split.include?('is-password-locked')
    scripts = doc.css('script[src]').select { |script| script['src'].split('?').first.end_with?('/_scripts/password-gate.js') }
    errors << "Wrong password boundary: #{file}" unless gates.size == (protected ? 1 : 0) && locked == protected && scripts.size == (protected ? 1 : 0)
    counts[protected ? 'protected' : 'public'] += 1
    if protected && gates.size == 1
      gate = gates.first
      errors << "Password changed: #{file}" unless gate['data-password-hash'] == password_hash
      errors << "Missing input: #{file}" unless gate.at_css('input[type=password][required]')
      errors << "Wrong translated message: #{file}" unless gate.at_css('.password-gate-message')&.text&.strip == dictionary.fetch(message, message)
      home = gate.at_css('.password-gate-home')
      errors << "Wrong public home link: #{file}" unless home && home['href'] == "/#{prefix}" && home.text.strip == dictionary.fetch('Return to home', 'Return to home')
    elsif !protected
      errors << "Password configuration on public page: #{file}" if doc.to_html.include?(password_hash)
    end
  end
end
abort errors.uniq.join("\n") unless errors.empty?
puts "Passed: #{counts['protected']} protected pages and #{counts['public']} public pages across all five languages; password scope, scripts, translations and return links."
