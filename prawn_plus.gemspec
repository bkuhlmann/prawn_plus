# frozen_string_literal: true

require_relative "lib/prawn_plus/identity"

Gem::Specification.new do |spec|
  spec.name = PrawnPlus::Identity::NAME
  spec.version = PrawnPlus::Identity::VERSION
  spec.platform = Gem::Platform::RUBY
  spec.authors = ["Brooke Kuhlmann"]
  spec.email = ["brooke@alchemists.io"]
  spec.homepage = "https://www.alchemists.io/projects/prawn_plus"
  spec.summary = "A Rails renderer for Prawn PDFs."
  spec.license = "Apache-2.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/bkuhlmann/prawn_plus/issues",
    "changelog_uri" => "https://www.alchemists.io/projects/prawn_plus/changes.html",
    "documentation_uri" => "https://www.alchemists.io/projects/prawn_plus",
    "source_code_uri" => "https://github.com/bkuhlmann/prawn_plus"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 2.7"
  spec.add_dependency "prawn", "~> 2.2"
  spec.add_dependency "prawn-table", "~> 0.2"
  spec.add_dependency "rails", "~> 6.0"
  spec.add_development_dependency "bundler-audit", "~> 0.6"
  spec.add_development_dependency "capybara", "~> 3.1"
  spec.add_development_dependency "gemsmith", "~> 14.0"
  spec.add_development_dependency "git-cop", "~> 4.0"
  spec.add_development_dependency "guard-rspec", "~> 4.7"
  spec.add_development_dependency "pg", "~> 1.2"
  spec.add_development_dependency "pry", "~> 0.12"
  spec.add_development_dependency "pry-byebug", "~> 3.7"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "reek", "~> 6.0"
  spec.add_development_dependency "rspec-rails", "~> 4.0"
  spec.add_development_dependency "rubocop", "~> 0.83"
  spec.add_development_dependency "rubocop-performance", "~> 1.5"
  spec.add_development_dependency "rubocop-rake", "~> 0.5"
  spec.add_development_dependency "rubocop-rspec", "~> 1.39"
  spec.add_development_dependency "simplecov", "~> 0.18"

  spec.files            = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths    = ["lib"]
end
