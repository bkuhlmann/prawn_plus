# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "prawn_plus"
  spec.version = "14.0.2"
  spec.authors = ["Brooke Kuhlmann"]
  spec.email = ["brooke@alchemists.io"]
  spec.homepage = "https://alchemists.io/projects/prawn_plus"
  spec.summary = "A Rails renderer for Prawn PDFs."
  spec.license = "Hippocratic-2.1"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/bkuhlmann/prawn_plus/issues",
    "changelog_uri" => "https://alchemists.io/projects/prawn_plus/versions",
    "documentation_uri" => "https://alchemists.io/projects/prawn_plus",
    "funding_uri" => "https://github.com/sponsors/bkuhlmann",
    "label" => "Prawn+",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/bkuhlmann/prawn_plus"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 3.3"
  spec.add_dependency "prawn", "~> 2.4"
  spec.add_dependency "prawn-table", "~> 0.2"
  spec.add_dependency "rails", "~> 7.1"
  spec.add_dependency "refinements", "~> 11.0"

  spec.files = Dir["*.gemspec", "lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
end
