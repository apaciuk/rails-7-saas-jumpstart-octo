# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.3'

# Use specific branch of Rails
gem 'rails', github: 'rails/rails', branch: '7-0-stable'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record, & optional yeet_dba for DB constraint errors, [https://github.com/kevincolemaninc/yeet_dba]
gem 'pg', '~> 1.2'
# gem 'yeet_dba'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# View Components/Partials
gem 'view_component'

# Multi Tenant no data leak (if enable extra config needed see Readme)
# gem 'multi-tenant-support'

# Http & cookies
gem 'mechanize'

# Use JavaScript with ESM import maps, & bundling CSS [https://github.com/rails/importmap-rails]
gem 'cssbundling-rails', '~> 1.0'
gem 'importmap-rails'
gem 'jsbundling-rails', '~> 1.0'
gem 'requestjs-rails' # Always after importmap

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'cable_ready'
gem 'hotwire-rails'
gem 'stimulus-rails'

# Nominal basic CSS framework can be swapped out.
gem 'bootstrap', '5.1.3'
gem 'font-awesome-rails'

# IDs
gem 'friendly_id', '~> 5.4'

# Service Objects
gem 'light-services', '~> 0.6.3'
gem 'rails-patterns'

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
gem 'image_processing', '~> 1.2'
gem 'paperclip', git: 'git://github.com/thoughtbot/paperclip.git'

# Admin section
gem 'administrate', github: 'excid3/administrate', branch: 'jumpstart'

# Compress Full name
gem 'name_of_person', '~> 1.1'

# Notifications
gem 'noticed', '~> 1.2'

# Social Media Auth
gem 'omniauth-facebook', '~> 8.0'
gem 'omniauth-github', '~> 2.0'
gem 'omniauth-twitter', '~> 1.4'

# Auth, Logins, Tokens
gem 'devise', git: 'https://github.com/heartcombo/devise', branch: 'main'
gem 'devise_masquerade', '~> 1.3'

# Auth Roles w Devise
gem 'pundit', '~> 2.1'

# Processes
gem 'sidekiq', '~> 6.2'

# Sitemap
gem 'sitemap_generator', '~> 6.1'
gem 'whenever', require: false

# Env variables
gem 'dotenv-rails', '~> 2.7'

# Favicon
gem 'rails_real_favicon', '~> 0.1.1'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem 'jbuilder'

# Use Redis adapter to run Action Cable in production
gem 'redis', '~> 4.0'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
gem 'sassc-rails'

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker', '~> 2.19'
  gem 'rspec-rails', '~> 5.0'
  gem 'rubocop', '~> 1.23', require: false
  gem 'rubocop-performance', '~> 1.11.0', require: false
  gem 'rubocop-rails', '~> 2.11.0', require: false
  gem 'rubocop-rspec', '~> 2.6', require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 5.1'
  gem 'webdrivers'
end
