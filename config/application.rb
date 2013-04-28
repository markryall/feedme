require 'uri'
require 'erb'
require 'active_record'
require 'yaml'

db = YAML.load(ERB.new(File.read('config/database.yml')).result)['production']
ActiveRecord::Base.establish_connection db