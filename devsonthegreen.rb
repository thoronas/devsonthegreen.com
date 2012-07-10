require 'bundler/setup'

module AssetHelpers
  def asset_path(source)
    '/assets/' + settings.sprockets.find_asset(source).digest_path
  end
end

module DevsOnTheGreen 

  Dir['./models/**/*.rb'].each {|f| require f }

  class Application < Sinatra::Base
    Bundler.require(settings.environment)
    Bundler.require(:assets)

    set :root, File.expand_path('../', __FILE__)
    set :sprockets, Sprockets::Environment.new(root)
    set :precompile, [ /\w+\.(?!js|css).+/, /application.(css|js)$/ ]
    set :assets_prefix, 'assets'
    set :assets_path, File.join(root, 'public', assets_prefix)

    configure settings.environment.to_sym do
      register Sinatra::Reloader if development?

      db = YAML.load(File.new(settings.root + '/database.yml'))[settings.environment.to_s]
      DataMapper.setup(:default, db)
      DataMapper.auto_upgrade!
      DataMapper.finalize
    end

    configure do
      sprockets.append_path(File.join(root, 'assets', 'stylesheets'))
      sprockets.append_path(File.join(root, 'assets', 'javascripts'))
      sprockets.append_path(File.join(root, 'assets', 'images'))

      sprockets.context_class.instance_eval do
        include AssetHelpers
      end
    end

    helpers do
      include AssetHelpers
    end

    get '/' do
      slim :index
    end

  end
end
