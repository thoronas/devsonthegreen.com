require 'rubygems'
require 'bundler'

Bundler.require

use Rack::Static, :urls => [ '/favicon.ico', '/assets', '/images' ], :root => "public"

require './devsonthegreen'
run DevsOnTheGreen::Application
