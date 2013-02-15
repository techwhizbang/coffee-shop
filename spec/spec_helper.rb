require 'rubygems'
require 'rspec'
require 'shoulda-matchers'
require 'shoulda/matchers/active_model'
require 'factory_girl'

require File.expand_path(File.dirname(__FILE__) + "/../lib/coffee-shop")

RSpec.configure do |config|

  config.include Shoulda::Matchers::ActiveModel

end


