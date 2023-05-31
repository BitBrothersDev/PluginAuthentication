PluginAuthentication::Engine.routes.draw do
  devise_for :users, class_name: "PluginAuthentication::User", controllers: {
    registrations: 'plugin_authentication/users/registrations',
    sessions: 'plugin_authentication/users/sessions',
    omniauth_callbacks: 'plugin_authentication/users/omniauth_callback'
  }

end
