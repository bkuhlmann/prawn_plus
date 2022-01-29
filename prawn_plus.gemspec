# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name = "prawn_plus"
  spec.version = "12.1.0"
  spec.authors = ["Brooke Kuhlmann"]
  spec.email = ["brooke@alchemists.io"]
  spec.homepage = "https://www.alchemists.io/projects/prawn_plus"
  spec.summary = "A Rails renderer for Prawn PDFs."
  spec.license = "Hippocratic-3.0"

  spec.metadata = {
    "bug_tracker_uri" => "https://github.com/bkuhlmann/prawn_plus/issues",
    "changelog_uri" => "https://www.alchemists.io/projects/prawn_plus/versions",
    "documentation_uri" => "https://www.alchemists.io/projects/prawn_plus",
    "label" => "Prawn+",
    "rubygems_mfa_required" => "true",
    "source_code_uri" => "https://github.com/bkuhlmann/prawn_plus"
  }

  spec.signing_key = Gem.default_key_path
  spec.cert_chain = [Gem.default_cert_path]

  spec.required_ruby_version = "~> 3.1"
  spec.add_dependency "prawn", "~> 2.4"
  spec.add_dependency "prawn-table", "~> 0.2"
  spec.add_dependency "rails", "~> 7.0"
  spec.add_dependency "refinements", "~> 9.1"

  spec.files = Dir["*.gemspec", "lib/**/*"]
  spec.extra_rdoc_files = Dir["README*", "LICENSE*"]
end
