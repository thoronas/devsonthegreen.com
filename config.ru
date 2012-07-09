require 'rubygems'
require 'bundler'

Bundler.require

use Rack::Static, :urls => [ '/favicon.ico', '/css' ], :root => "public"

require './devsonthegreen'
run DevsOnTheGreen::Application
