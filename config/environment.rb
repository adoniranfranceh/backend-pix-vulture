# frozen_string_literal: true

require 'rubygems'
require 'bundler'
Bundler.require(:default)
Bundler.require(Sinatra::Base.environment)
require 'active_support/deprecation'
require 'active_support/all'
Dotenv.load

set :database, { adapter: 'sqlite3', database: ENV.fetch('DB_PATH', nil) }
