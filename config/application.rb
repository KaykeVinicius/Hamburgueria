require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Hamburgueria
  class Application < Rails::Application
    config.load_defaults 7.2

    config.autoload_lib(ignore: %w[assets tasks])

    config.action_mailer.default_url_options = { host: "localhost", port: 3000 }
  end
end
