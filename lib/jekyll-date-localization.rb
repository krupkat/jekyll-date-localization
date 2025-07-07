require 'date'
require 'i18n'

module Jekyll
  module I18nFilter
    def localize(input, format=nil, locale=nil)
      load_translations
      locale = locale || @context.registers[:site].config['date_locale']
      if input.is_a?(String)
        input = DateTime.parse(input)
      end
      I18n.l input, :format => format, :locale => locale
    end

    def load_translations
      unless I18n::backend.instance_variable_get(:@translations)
        locales_path = @context.registers[:site].config['locales_path'] || '_locales'
        I18n.backend.load_translations \
          Dir[File.join(File.dirname(__FILE__),'locales/*.yml')] + Dir[File.join(locales_path, '*.yml')]
      end
    end
  end
end

Liquid::Template.register_filter(Jekyll::I18nFilter)
