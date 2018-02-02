require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Blog
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end

config.autoload_paths += %w(#{config.root}/app/models/ckeditor)

#config.assets.precompile += Ckeditor.assets
    #config.assets.precompile += %w( ckeditor_assets/* *.png *.jpg *.jpeg *.gif img/* uploads/*)
    #config.encoding = "utf-8"
    #config.assets.paths << "#{Rails}/vendor/assets/*"
    #config.autoload_paths += %w(#{config.root}/app/models/ckeditor)
