module PluginAuthentication
  class Engine < ::Rails::Engine
    isolate_namespace PluginAuthentication

    initializer 'plugin_authentication.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        include Devise::Controllers::Helpers
      end
    end
    config.to_prepare do
      Devise::SessionsController.layout "application"
      Devise::RegistrationsController.layout "application"
      Devise::ConfirmationsController.layout "application"
      Devise::UnlocksController.layout "application"
      Devise::PasswordsController.layout "application"
    end
  end
end
