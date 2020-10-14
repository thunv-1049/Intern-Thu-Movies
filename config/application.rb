require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module InternThuMovies
  class Application < Rails::Application
    config.load_defaults 6.0
    I18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}').to_s]
    config.i18n.available_locales = [:en, :vi]
    config.i18n.default_locale = :en
    config.action_view.embed_authenticity_token_in_remote_forms = true
  end
end
