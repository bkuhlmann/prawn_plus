desc "Open IRB console for gem development environment"
task :console do
  require "irb"
  require "prawn_plus"
  ARGV.clear
  IRB.start
end