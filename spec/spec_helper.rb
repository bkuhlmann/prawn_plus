# Setup Bundler
require "bundler/setup"
require "pry"
require "pry-byebug"
require "pry-remote"
require "pry-rescue"
require "pry-stack_explorer"
require "pry-vterm_aliases"
require "pry-git"
require "pry-doc"

# Load Dummy Rails application.
ENV["RAILS_ENV"] ||= "test"
require File.expand_path "../dummy/config/environment",  __FILE__
ENV["RAILS_ROOT"] ||= File.dirname(__FILE__) + "/dummy"

# Load Capybara for application request testing.
require "capybara/rspec"
require "capybara/rails"

# Load Pry for debugging.
require "pry"

# Load SQLite database in memory.
ActiveRecord::Base.establish_connection adapter: "sqlite3", database: ":memory:"

# Configure Rspec.
RSpec.configure do |config|
  config.run_all_when_everything_filtered = true
  config.filter_run focus: true

  Capybara.app = Dummy::Application
end
