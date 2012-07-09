source 'https://rubygems.org'

DM_VERSION    = '~> 1.2.0'

gem 'sinatra', :require => "sinatra/base"
gem 'sinatra-contrib'

gem 'data_mapper'

gem 'randexp'
gem 'unicorn'
gem 'slim'

group :development do
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-unicorn', :git => 'git://github.com/brianp/capistrano-unicorn.git'
  gem 'yard'
  gem 'thin'
end

group :development, :test do
  gem 'pry'
  gem 'debugger'
end

group :test do
  gem 'dm-sqlite-adapter'
  gem 'capybara'
  gem 'rspec-rails', '>= 2.0.1'
  gem 'simplecov', :require => false
  gem 'database_cleaner'
end
