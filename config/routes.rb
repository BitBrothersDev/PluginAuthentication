PluginAuthentication::Engine.routes.draw do
  devise_for :users, class_name: "PluginAuthentication::User", controllers: {
    registrations: 'plugin_authentication_users/registrations',
    sessions: 'plugin_authentication_users/sessions',
    omniauth_callbacks: 'plugin_authentication_users/omniauth_callback'
  }

end
