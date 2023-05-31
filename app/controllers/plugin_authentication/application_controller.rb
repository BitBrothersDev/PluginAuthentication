module PluginAuthentication
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    skip_before_action :verify_authenticity_token, only: :omniauth_callbacks if :omniauth_callbacks?

    private

    def omniauth_callbacks?
      is_a?(Devise::OmniauthCallbacksController)
    end
  end
end
