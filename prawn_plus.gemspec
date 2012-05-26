# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "prawn_plus/version"

Gem::Specification.new do |s|
  s.name									= "prawn_plus"
  s.version								= PrawnPlus::VERSION
  s.platform							= Gem::Platform::RUBY
  s.author								= "Brooke Kuhlmann"
  s.email									= "brooke@redalchemist.com"
  s.homepage							= "http://www.redalchemist.com"
  s.summary								= "Enhances default Prawn PDF functionality."
  s.description						= "Enhances default Prawn PDF functionality (which includes PDF template handling/rendering)."
	s.license								= "MIT"
	s.post_install_message	= "(W): www.redalchemist.com. (T): @ralchemist."

	s.required_ruby_version = "~> 1.9.0"
	s.add_dependency "rails", "~> 3.2"
	s.add_dependency "prawn", "~> 0.12"
  s.add_development_dependency "rake"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency("rb-fsevent") if RUBY_PLATFORM =~ /darwin/i
  s.add_development_dependency "guard-rspec"
	
  s.files            = Dir["lib/**/*", "vendor/**/*"]
  s.extra_rdoc_files = Dir["README*", "CHANGELOG*", "LICENSE*"]
  s.require_paths    = ["lib"]
end
