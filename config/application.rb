require 'uri'
require 'erb'
require 'active_record'
require 'yaml'

uri = ENV['DATABASE_URL'] || 'http://localhost'
db = URI.parse uri

if db.scheme == 'postgres'
  ActiveRecord::Base.establish_connection(
    adapter:  db.scheme,
    host:     db.host,
    username: db.user,
    password: db.password,
    database: db.path[1..-1],
    encoding: 'utf8'
  )
else
  environment = 'development'
  db = YAML.load(ERB.new(File.read('config/database.yml')).result)[environment]
  ActiveRecord::Base.establish_connection(db)
end