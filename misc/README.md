# Development on NixOS

## 1. Pick a language

Set the language variable `date_locale` in `_config.yml`

## 2. Render a template with jekyll

```bash
# prepare the jekyll environment
nix-shell bootstrap.nix

# enter the dev shell
nix-shell

# run the server
bundle exec jekyll serve
```

## 3. Push new version

```bash
nix-shell -p ruby

gem build .
gem push *.gem
```