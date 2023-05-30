Rails.application.routes.draw do
  mount PluginAuthentication::Engine => "/plugin_authentication"
  devise_for :users, class_name: "PluginAuthentication::User"
end
