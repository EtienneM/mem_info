$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))

ENV["RACK_ENV"] = "test"

require 'rspec'
require 'mem_info'

RSpec.configure do |config|
end
