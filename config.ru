require 'rubygems'
require 'bundler/setup'

Bundler.require


require 'sinatra/base'
require File.join(File.dirname(__FILE__), 'app', 'controllers', 'routes')

set :show_exceptions, true

run Setar

