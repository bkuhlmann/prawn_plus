# frozen_string_literal: true

$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "prawn_plus/identity"

Gem::Specification.new do |spec|
  spec.name                  = PrawnPlus::Identity.name
  spec.version               = PrawnPlus::Identity.version
  spec.platform              = Gem::Platform::RUBY
  spec.authors               = ["Brooke Kuhlmann"]
  spec.email                 = ["brooke@alchemists.io"]
  spec.homepage              = "https://github.com/bkuhlmann/prawn_plus"
  spec.summary               = "Enhances default Prawn PDF functionality."
  spec.description           = "Enhances default Prawn PDF functionality."
  spec.license               = "MIT"

  if ENV["RUBY_GEM_SECURITY"] == "enabled"
    spec.signing_key = File.expand_path("~/.ssh/gem-private.pem")
    spec.cert_chain = [File.expand_path("~/.ssh/gem-public.pem")]
  end

  spec.required_ruby_version = "~> 2.3"
  spec.add_dependency "rails", "~> 5.0"
  spec.add_dependency "prawn", "~> 2.1"
  spec.add_dependency "prawn-table", "~> 0.2"
  spec.add_development_dependency "rake", "~> 11.0"
  spec.add_development_dependency "gemsmith", "~> 7.7"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "pry-state"
  spec.add_development_dependency "bond"
  spec.add_development_dependency "wirb"
  spec.add_development_dependency "hirb"
  spec.add_development_dependency "awesome_print"
  spec.add_development_dependency "rspec-rails", "~> 3.5"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "rb-fsevent" # Guard file events for OSX.
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "terminal-notifier"
  spec.add_development_dependency "terminal-notifier-guard"
  spec.add_development_dependency "rubocop", "~> 0.41"
  spec.add_development_dependency "codeclimate-test-reporter"

  spec.files            = Dir["lib/**/*", "vendor/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths    = ["lib"]
end
