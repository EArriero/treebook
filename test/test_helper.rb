ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

# Comment. Esta linea de codigo es sugirida por la gema devise, con el fin de correr los integration test de forma exitosa.
class ActionController::TestCase
  include Devise::TestHelpers
end