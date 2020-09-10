# This file was generated by the `rspec --init` command. Conventionally, all
# specs live under a `spec` directory, which RSpec adds to the `$LOAD_PATH`.
# The generated `.rspec` file contains `--require spec_helper` which will cause
# this file to always be loaded, without a need to explicitly require it in any
# files.
#
# Given that it is always loaded, you are encouraged to keep this file as
# light-weight as possible. Requiring heavyweight dependencies from this file
# will add to the boot time of your test suite on EVERY test run, even for an
# individual file that may not need all of that loaded. Instead, consider making
# a separate helper file that requires the additional dependencies and performs
# the additional setup, and require it from the spec files that actually need
# it.
#
# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
require 'sinatra'
require 'rspec'
require 'rack/test'
require 'capybara/rspec'
require './app'
ENV['RACK_ENV'] = 'test'

module RSpecMixin
  include Rack::Test::Methods
  def app
    Sinatra::Application
  end
  Capybara.app = Sinatra::Application.new
end

RSpec.configure do |config|
  # Configure each test to always use a new singleton instance

  config.include RSpecMixin
  config.include Capybara::DSL
end

Capybara.configure do |config|
end
