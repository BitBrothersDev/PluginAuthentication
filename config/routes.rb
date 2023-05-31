PluginAuthentication::Engine.routes.draw do
  devise_for :users, class_name: "PluginAuthentication::User", module: :devise, controllers: {
    registrations: 'plugin_authentication_user/registrations',
    sessions: 'plugin_authentication_user/sessions',
    omniauth_callbacks: 'plugin_authentication_user/omniauth_callback'
  }

end
