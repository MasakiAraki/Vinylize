# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'devise'
gem 'html2slim'
gem 'importmap-rails'
gem 'jbuilder'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.2'
gem 'sass-rails'
gem 'slim-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mswin mswin64 mingw x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mswin mswin64 mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'mysql2', '~> 0.5'
  gem 'rspec-rails', '~> 6.1.0'
  gem 'spring-commands-rspec'
end

group :development do
  gem 'error_highlight', '>= 0.4.0', platforms: [:ruby]
  gem 'rubocop', require: false
  gem 'rubocop-performance', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec'
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :production do
  gem 'pg', '~> 1.5', '>= 1.5.4'
end
