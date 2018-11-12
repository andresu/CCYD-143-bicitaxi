require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BicitaxiApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    #Raven.configure do |config|
      #config.dsn = 'https://485a1c6c40a74c4aa53cfec345f49865:2e3d0ccad83547bba333e6f319e3dd5b@sentry.io/1314254'
    #end

    # in an initializer, like sentry.rb
    #Raven.configure do |config|
      #config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
    #end
        
  end
end