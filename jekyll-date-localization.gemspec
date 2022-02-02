Gem::Specification.new do |s|
    s.name        = 'jekyll-date-localization'
    s.version     = '0.0.1'
    s.summary     = "Liquid filter for custom locale date formatting."
    s.authors     = ["Tomas Krupka"]
    s.files       = ["lib/jekyll-date-localization.rb"] + Dir['lib/locales/*.yml']
    s.license     = 'MIT'
    s.homepage    = 'https://github.com/krupkat/jekyll-date-localization'
    s.add_dependency 'i18n'
end