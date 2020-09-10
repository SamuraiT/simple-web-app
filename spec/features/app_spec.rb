require 'spec_helper'
require 'pry'
require './app'

RSpec.configure do |config|
  config.mock_with :rspec
end


describe App do
  let(:app) { App.new }
  let(:response) { get "/" }
  it "when accessing home" do
    expect(response.body).to include("hoge")
  end
end
