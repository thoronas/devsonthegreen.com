require 'bundler/setup'

Dir['./models/**/*.rb'].each {|f| require f }

module DevsOnTheGreen 
  class Application < Sinatra::Base
    register Sinatra::ConfigFile
    config_file './config.yml'

    configure settings.environment.to_sym do
      db = YAML.load(File.new(settings.root + '/config.yml'))[settings.environment.to_s]

      if development?
        register Sinatra::Reloader
        DataMapper.setup(:default, db)
      elsif production?
        DataMapper.setup(:default, db)
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
