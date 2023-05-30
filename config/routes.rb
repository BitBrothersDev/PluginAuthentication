PluginAuthentication::Engine.routes.draw do
  devise_for :users, class_name: "PluginAuthentication::User"
  root 'home#index'
end
