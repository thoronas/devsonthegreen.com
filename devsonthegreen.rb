require 'bundler/setup'

Dir['./models/**/*.rb'].each {|f| require f }

module DevsOnTheGreen 
  class Application < Sinatra::Base
    configure settings.environment.to_sym do
      register Sinatra::Reloader if development?

      db = YAML.load(File.new(settings.root + '/database.yml'))[settings.environment.to_s]
      DataMapper.setup(:default, db)
      DataMapper.auto_upgrade!
      DataMapper.finalize
    end

    get '/' do
      'Up and Running'
    end

  end
end
