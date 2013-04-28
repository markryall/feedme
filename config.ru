APP_ROOT = File.dirname __FILE__

$: << File.join(APP_ROOT, 'lib')

require './config/application'
require 'feedme'

run Feedme::API
