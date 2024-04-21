# frozen_string_literal: true

ruby file: ".ruby-version"

source "https://rubygems.org"

gemspec

group :quality do
  gem "caliber", "~> 0.51"
  gem "git-lint", "~> 7.3"
  gem "reek", "~> 6.3", require: false
  gem "simplecov", "~> 0.22", require: false
end

group :development do
  gem "rake", "~> 13.2"
end

group :test do
  gem "capybara", "~> 3.1"
  gem "guard-rspec", "~> 4.7", require: false
  gem "pg", "~> 1.5"
  gem "rspec-rails", "~> 6.1"
end

group :tools do
  gem "amazing_print", "~> 1.6"
  gem "debug", "~> 1.9"
  gem "repl_type_completor", "~> 0.1"
end
