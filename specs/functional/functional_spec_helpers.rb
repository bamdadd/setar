require 'rubygems'
require 'bundler/setup'
Bundler.require(:default, :test)

require File.join(File.dirname(__FILE__),'..','..','app','controllers','routes')

require_relative '../spec_helpers/navigation'

include Navigation

class Setar < Sinatra::Base
  set :environment, :test
end

def app
  Setar
end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include Rack::Test::Methods

  Capybara.app = app
end

