APP_ROOT = File.dirname __FILE__

$: << File.join(APP_ROOT, 'lib')

require 'feedme'

run Feedme::API
