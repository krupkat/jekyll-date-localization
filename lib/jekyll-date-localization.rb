require 'i18n'

module Jekyll
  module I18nFilter
    def localize(input, format=nil, locale=nil)
      load_translations
      locale = locale || @context.registers[:site].config["date_locale"]
      I18n.l input, :format => format, :locale => locale
    end

    def load_translations
      unless I18n::backend.instance_variable_get(:@translations)
        I18n.backend.load_translations \
          Dir[File.join(File.dirname(__FILE__),'locales/*.yml')] + Dir['_locales/*.yml']
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::I18nFilter)