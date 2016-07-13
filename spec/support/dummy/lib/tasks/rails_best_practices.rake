# frozen_string_literal: true

desc "Run Rails Best Practices"
task :rails_best_practices do
  puts "Running Rails Best Practices..."
  fail unless system "rails_best_practices --silent"
end
