# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.3', '>= 6.0.3.2'

# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'

# Use Puma as the app server
gem 'puma', '~> 4.3'

# Use Active Model has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

# authentication
gem 'jwt'

# seeding database
gem 'seed-fu', '~> 2.3'

# configuration
gem 'config'

# GraphQL
gem 'graphiql-rails'
gem 'graphql'

# # tag stories(region,places,point of interest)
# gem 'acts-as-taggable-on', '~> 6.0'

group :development, :test do
  gem 'awesome_print'
  gem 'bullet' # detect N+1 queries
  gem 'factory_bot_rails' # we add it here so that rails generate factory for models
  gem 'faker'
  gem 'pry'
  gem 'rubocop', '~> 0.87.0'
  gem 'rubocop-rails', require: false
  gem 'spring-commands-rspec'
end

group :development do
  gem 'listen', '~> 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'database_cleaner-active_record'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'rspec'
  gem 'rspec-graphql_matchers'
  gem 'rspec-rails'
  gem 'simplecov', require: false
end
