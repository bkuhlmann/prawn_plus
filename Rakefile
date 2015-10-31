require "gemsmith/rake/setup"
Dir.glob("lib/prawn_plus/tasks/*.rake").each { |file| load file }

task default: %w(spec rubocop)
