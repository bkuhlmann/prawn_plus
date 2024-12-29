# frozen_string_literal: true

ruby file: ".ruby-version"

source "https://rubygems.org"

gemspec

group :quality do
  gem "caliber", "~> 0.68"
  gem "git-lint", "~> 9.0"
  gem "reek", "~> 6.3", require: false
  gem "rubocop-rspec_rails", "~> 2.30", require: false
  gem "simplecov", "~> 0.22", require: false
end

group :development do
  gem "rake", "~> 13.2"
end

group :test do
  gem "capybara", "~> 3.1"
  gem "pg", "~> 1.5"
  gem "rspec-rails", "~> 6.1"
end

group :tools do
  gem "amazing_print", "~> 1.6"
  gem "debug", "~> 1.10"
  gem "irb-kit", "~> 1.0"
  gem "repl_type_completor", "~> 0.1"
end
