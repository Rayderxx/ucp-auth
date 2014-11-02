require File.expand_path('../boot', __FILE__)

require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module UcpAuth
  class Application < Rails::Application
    config.middleware.use Rack::Cors do
      allow do
        origins '*'
        resource '*',
          :headers => :any,
          :methods => [:get, :post, :put, :delete, :options]
      end
    end
    config.active_record.default_timezone = :local
  end
end
