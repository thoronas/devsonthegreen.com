require 'bundler/setup'

Dir['./models/**/*.rb'].each {|f| require f }

module DevsOnTheGreen 
  class Application < Sinatra::Base
    register Sinatra::ConfigFile
    config_file './config.yml'

    configure settings.environment.to_sym do
      if development?
        register Sinatra::Reloader if development?
        DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/#{settings.environment.to_s}.sqlite3")
      elsif production?
        DataMapper.setup(:default, "postgresql://")
      else
        DataMapper.setup(:default, 'sqlite3::memory')
      end

      DataMapper.auto_upgrade!
      DataMapper.finalize
    end

    get '/' do
      'Up and Running'
    end

  end
end
