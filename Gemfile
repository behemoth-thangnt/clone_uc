# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem 'rails', '~> 7.0.4', '>= 7.0.4.1'

# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.5'

# Use the Puma web server [https://github.com/puma/puma]
gem 'puma', '~> 5.0'

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
# gem "jbuilder"

# Use Redis adapter to run Action Cable in production
# gem "redis", "~> 4.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'dotenv-rails'

  gem 'parallel_tests'
  gem 'pry-rails'
  gem 'rexml'
  gem 'rubocop'
  gem 'rubocop-graphql'
  gem 'rubocop-rails'
  gem 'rubocop-rspec'
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
  gem 'web-console'
end

group :test do
  gem 'capybara'

  # Data cleaner for test
  gem 'database_cleaner-active_record'
  gem 'factory_bot_rails'
  gem 'fakeredis', require: 'fakeredis/rspec'

  # RSpec
  gem 'rspec'
  gem 'rspec-rails', '~> 5.0.0'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 5.0'
  gem 'simplecov', require: false
  gem 'webdrivers'
end

group :development do
  # Annotate
  gem 'annotate'
  gem 'awesome_print'
  gem 'brakeman'
  gem 'bullet'

  # Foreman
  gem 'foreman'
  gem 'graphiql-rails'
  gem 'letter_opener'
  gem 'letter_opener_web', '~> 1.0'
  gem 'liquid'
  gem 'listen', '~> 3.3'
  gem 'rubycritic', require: false
  gem 'spring'
end

# Gemfile
gem 'devise'
gem 'graphql'
gem 'jp_prefecture'
gem 'jwt'
gem 'redis', '~> 4.0'
gem 'sprockets', '~> 4.0'

gem 'aasm'
gem 'active_hash'
gem 'activerecord-import'
gem 'activestorage-validator'
gem 'active_type'
gem 'acts_as_paranoid'
gem 'after_commit_everywhere'

gem 'charlock_holmes'
gem 'config'
gem 'device_detector'
gem 'enum_help'
gem 'faker'
gem 'faraday'
gem 'friendly_id', '~> 5.4.0'

gem 'google-cloud-storage'
gem 'gyoku'
gem 'holiday_jp'
gem 'image_processing', '~> 1.2'
gem 'interactor', '~> 3.0'

gem 'mini_magick'
gem 'moji_ultilities'
gem 'paper_trail'
gem 'payjp'
gem 'rack-cors'
gem 'ransack'
gem 'rest-client'

gem 'ridgepole'
gem 'sidekiq'
gem 'sidekiq-scheduler'
gem 'uuidtools'
gem 'vite_rails'
gem 'xmlhasher'
