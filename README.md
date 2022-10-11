# Jekyll Date Localization

[![Gem Version](https://badge.fury.io/rb/jekyll-date-localization.svg)](https://badge.fury.io/rb/jekyll-date-localization)

> Jekyll plugin for for custom locale date formatting

Jekyll Date Localization is a liquid filter plugin for formatting a date with a custom locale. The idea is based on [jekyll-i18n-date](https://github.com/uwolf/jekyll-i18n-date) however this package provides a gem-based plugin with a couple of locales already included for ease of use.

This is a simple plugin only for localizing dates, for larger scale translation capabilities check this [list of plugins](https://github.com/planetjekyll/awesome-jekyll-plugins#multi-language--multi-lingual).

## Installation

This plugin is available as a [RubyGem](https://rubygems.org/gems/jekyll-date-localization).

There are a few ways to install the plugin ([docs](https://jekyllrb.com/docs/plugins/installation/)), e.g. by adding this line to your application's `Gemfile`:

```
gem 'jekyll-date-localization', group: :jekyll_plugins
```

And then execute the `bundle` command to install the gem.

## Configuration

You can configure the default locale in your `config.yml` file:

```
date_locale: cs
```

## Usage

In your markup, simply use the `localize` liquid filter made available through this plugin:

```
{{ page.date | localize: '%d. %B %Y' }}
```

By default the value of `date_locale` is used to select the language. Alternatively you can also directly specify the language:

```
{{ page.date | localize: '%d. %B %Y', 'fr' }}
```

For details about the formatting string, see [strftime](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/DateTime.html#method-i-strftime) documentation. The localized entries are `%b %B %a %A`.

## Additional languages

There are a couple of built-in languages in this repository in the [lib/locales](https://github.com/krupkat/jekyll-date-localization/tree/main/lib/locales) directory. If you want to add your own language file or override one of the included languages, create a new `*.yml` language definition file and put it in the `_locales` directory of your project.

# Contribute

Feel free to send PRs with additional languages or improvements.

# Copyright

Copyright (c) 2022 Tomas Krupka

License: MIT
