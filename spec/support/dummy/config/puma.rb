# frozen_string_literal: true

workers Integer(ENV.fetch("WEB_CONCURRENCY", 2))

thread_count = Integer(ENV.fetch("MAX_THREADS", 5))
threads thread_count, thread_count

preload_app!

rackup DefaultRackup
port ENV.fetch("PORT", 3000)
environment ENV.fetch("RACK_ENV", "development")

on_worker_boot do
  ActiveRecord::Base.establish_connection
end

plugin :tmp_restart
