require 'bundler'
Bundler.require

DB = {}
DB[:name] = 'MiniBlog'
DB[:conn] = SQLite3::Database.new('db/miniblog.db')
DB[:conn].results_as_hash = true

require_relative '../lib/models/post.rb'
require_relative '../lib/models/user.rb'
