# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.1'

gem 'rails', '~> 6.1.4'

gem 'activeadmin', '~> 2.9'
gem 'activeadmin_addons', '~> 1.8', '>= 1.8.2'
gem 'active_admin_theme', '~> 1.1', '>= 1.1.4'
gem 'aws-sdk-s3', '~> 1.96', '>= 1.96.1'
gem 'bootsnap', '>= 1.4.4', require: false
gem 'cancancan', '~> 3.3'
gem 'devise', '~> 4.7'
gem 'dotenv-rails', '~> 2.7', '>= 2.7.6'
gem 'mysql2', '~> 0.5'
gem 'puma', '~> 5.0'
gem 'ransack', '~> 2.4', '>= 2.4.2'
gem 'sass-rails', '~> 6.0'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.18'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.2'
  gem 'rubocop', '~> 1.18', require: false
end

group :development do
  gem 'listen', '~> 3.3'
  gem 'spring'
end
