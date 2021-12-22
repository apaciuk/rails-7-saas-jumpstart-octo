# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.0'

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem 'sprockets-rails'

# Use postgresql as the database for Active Record
gem 'pg', '~> 1.1'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Multi Tenant no data leak (if enable extra config needed see Readme)
# gem 'multi-tenant-support'

# Use JavaScript with ESM import maps, & bundling CSS [https://github.com/rails/importmap-rails]
gem 'importmap-rails'
gem 'cssbundling-rails', '~> 1.0'
gem 'jsbundling-rails', '~> 1.0'
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem 'turbo-rails'

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'stimulus-rails'

# Nominal basic CSS framework & Icon fonts, can be swapped out.
gem 'bootstrap', '5.1.3'
gem 'font-awesome-sass', '~> 5.15'
# IDs
gem 'friendly_id', '~> 5.4'
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem 'cable_ready'

# Use Active Storage variant
gem 'image_processing'
# Admin
gem 'madmin'
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

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Sass to process CSS
gem 'sassc-rails'

group :development, :test do
  gem 'rspec-rails', '~> 5.0'
  gem 'rubocop', '~> 1.23', require: false
  gem 'rubocop-performance', '~> 1.11.0', require: false
  gem 'rubocop-rails', '~> 2.11.0', require: false
  gem 'rubocop-rspec', '~> 2.6', require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end


