# frozen_string_literal: true

workers Integer(ENV.fetch("WEB_CONCURRENCY", 2))

thread_count = Integer(ENV.fetch("MAX_THREADS", 5))
threads thread_count, thread_count

local_port = ENV.fetch "PORT", 3000
local_root = ENV["HOME"]

preload_app!

rackup DefaultRackup
port local_port
environment ENV.fetch("RACK_ENV", "development")

if ENV["HTTPS_LOCAL"] == "true"
  bind "ssl://localhost:#{local_port}?key=#{local_root}/.ssl/localhost.key&cert=#{local_root}/.ssl/localhost.crt"
end

on_worker_boot do
  ActiveRecord::Base.establish_connection
end

plugin :tmp_restart
