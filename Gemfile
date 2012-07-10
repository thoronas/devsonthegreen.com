source 'https://rubygems.org'

DM_VERSION    = '~> 1.2.0'

gem 'sinatra', :require => 'sinatra/base'
gem 'sinatra-contrib'

gem 'dm-core',              DM_VERSION
gem 'dm-postgres-adapter'
gem 'dm-migrations',        DM_VERSION
gem 'dm-validations',       DM_VERSION
gem 'dm-constraints',       DM_VERSION
gem 'dm-transactions',      DM_VERSION
gem 'dm-aggregates',        DM_VERSION
gem 'dm-timestamps',        DM_VERSION

gem 'randexp'
gem 'unicorn'
gem 'slim'

group :assets do
  gem 'coffee-script', '~>2.2.0'
  gem 'uglifier', '~>1.0.3'
  gem 'sass', '~>3.1.10'
  gem 'sprockets', '2.4.4'
  gem 'therubyracer'
end

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
  gem 'guard'
  gem 'guard-sprockets2'
  gem 'guard-minitest'
  gem 'guard-uglify'
end

group :test do
  gem 'dm-sqlite-adapter'
  gem 'guard-minitest'
  gem 'minitest-pry'
  gem 'turn'
  gem 'database_cleaner'
end
