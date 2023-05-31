module PluginAuthentication
  class Engine < ::Rails::Engine
    isolate_namespace PluginAuthentication

    initializer 'plugin_authentication.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        include Devise::Controllers::Helpers
      end
    end
    initializer "plugin_authentication.omniauth" do
      Rails.application.config.middleware.use OmniAuth::Builder do
        provider :google_oauth2, ENV['GOOGLE_CLIENT_ID'], ENV['GOOGLE_CLIENT_SECRET']
      end
    end
  end
end
