Gem::Specification.new do |s|
    s.name = 'jekyll-date-localization'
    s.version = '0.0.8'
    s.summary = "Liquid filter for custom locale date formatting."
    s.authors = ["krupkat"]
    s.files = ["lib/jekyll-date-localization.rb"] + Dir['lib/locales/*.yml']
    s.license = 'MIT'
    s.homepage = 'https://github.com/krupkat/jekyll-date-localization'
    s.extra_rdoc_files = ['README.md']
    s.required_ruby_version = '>= 2.0.0'
    s.add_dependency 'i18n', '~> 1.0'
end
