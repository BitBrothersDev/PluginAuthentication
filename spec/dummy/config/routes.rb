Rails.application.routes.draw do
  mount PluginAuthentication::Engine => "/plugin_authentication"
end
