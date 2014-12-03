# Setup Bundler
require "bundler/setup"

if ENV["CODECLIMATE_REPO_TOKEN"]
  require "codeclimate-test-reporter"
  CodeClimate::TestReporter.start
end

require "pry"
require "pry-remote"
require "pry-rescue"

case Gem.ruby_engine
  when "ruby"
    require "pry-byebug"
    require "pry-stack_explorer"
  when "jruby"
    require "pry-nav"
end

# Load Dummy Rails application.
ENV["RAILS_ENV"] ||= "test"
require File.expand_path "../dummy/config/environment",  __FILE__
ENV["RAILS_ROOT"] ||= File.dirname(__FILE__) + "/dummy"

# Load Capybara for application request testing.
require "capybara/rspec"
require "capybara/rails"

# Load SQLite database in memory.
ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

Dir[File.join(File.dirname(__FILE__), "support/kit/**/*.rb")].each { |file| require file }

RSpec.configure do |config|
  Capybara.app = Dummy::Application
end
