# frozen_string_literal: true

ENV["BUNDLE_GEMFILE"] ||= File.expand_path "../../../../Gemfile", __dir__

require "bundler/setup" if File.exist? ENV["BUNDLE_GEMFILE"]
$LOAD_PATH.prepend File.expand_path("../../../../lib", __dir__)
