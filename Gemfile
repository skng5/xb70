# frozen_string_literal: true
source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'activerecord-import'
gem "autoprefixer-rails"
gem 'devise'
gem "jquery-rails"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "therubyracer"
gem "rails", "~> 5.1.0"
gem "recipient_interceptor"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "sprockets", ">= 3.0.0"
gem "sprockets-es6"
gem "sqlite3"
gem "title"
gem "uglifier"

## Fedora Adapter
gem 'active-fedora'
gem 'hydra-works'
gem 'rdf'

## File Characterization
gem 'ruby_tika_app'

group :development do
  gem "listen"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem 'capybara'
  gem "dotenv-rails"
  gem "factory_bot"
  gem "factory_bot_rails"
  gem 'fcrepo_wrapper'
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails"
  gem 'rubocop'
  gem 'rubocop-rspec'
end

group :development, :staging do
  gem "rack-mini-profiler", require: false
end

group :test do
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end

group :staging, :production do
  gem "rack-timeout"
  gem "rails_stdout_logging"
end

## Enter Hydra Stuff
gem 'blacklight', '>= 6.10'

group :development, :test do
  gem 'rails-controller-testing'
  gem 'solr_wrapper', '>= 0.3'
end

gem 'rsolr', '~> 2.0'

gem 'devise-guests', '~> 0.5', github: 'cbeer/devise-guests', branch: 'master'
gem 'reform'
gem 'reform-rails'

gem 'bixby'
# Maybe extract just the stuff for multi-inputs..
gem 'cancancan'
gem 'coveralls', require: false
gem 'draper'
gem 'dry-struct', '~> 0.3.0'
gem 'dry-types'
gem 'hydra-access-controls'
gem 'hydra-derivatives'
gem 'hydra-editor'
gem 'hydra-head'
gem 'jquery-ui-rails', '~> 6.0'
gem 'valkyrie', path: './valkyrie/'
