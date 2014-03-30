# Setup Bundler
require "bundler/setup"
require "pry"
require "pry-remote"
require "pry-rescue"
require "coveralls"

case Gem.ruby_engine
  when "ruby"
    require "pry-byebug"
    require "pry-stack_explorer"
  when "jruby"
    require "pry-nav"
  when "rbx"
    require "pry-nav"
    require "pry-stack_explorer"
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

Coveralls.wear!

# Configure Rspec.
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run focus: true

  config.before(:all) { GC.disable }
  config.after(:all) { GC.enable }

  Capybara.app = Dummy::Application
end
