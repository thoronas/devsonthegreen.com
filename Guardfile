group :spec do
  guard 'minitest', :cli => "--seed 123456" do
    watch(%r|^spec/(.*)_spec\.rb|)
    watch(%r{^lib/(.*/)?([^/]+)\.rb$})  { |m| "spec/#{m[1]}#{m[2]}_spec.rb" }
    watch(%r|^spec/minispec_helper\.rb|)    { "spec" }
  end
end

group :sprockets do
  require 'rubygems'
  require 'bundler'
  Bundler.require
  require './devsonthegreen'

  guard 'sprockets2', :sprockets => DevsOnTheGreen::Application.sprockets, :digest => false do
    watch(%r{^assets/.+$})
    watch('devsonthegreen.rb')
  end

  guard 'uglify', :input => 'public/assets/application.js', :destination_file => 'public/assets/application.js' do
    watch('public/assets/application.js')
  end
end

