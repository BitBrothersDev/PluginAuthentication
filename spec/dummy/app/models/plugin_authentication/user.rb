module PluginAuthentication
  class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :validatable
  end
end