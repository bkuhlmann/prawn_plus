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
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/bkuhlmann/prawn_plus"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 3.0"
  spec.add_dependency "prawn", "~> 2.4"
  spec.add_dependency "prawn-table", "~> 0.2"
  spec.add_dependency "rails", "~> 6.0"
  spec.add_dependency "refinements", "~> 8.5"

  spec.files            = Dir["lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
  spec.require_paths    = ["lib"]
end
