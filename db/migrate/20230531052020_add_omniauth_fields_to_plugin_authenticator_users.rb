class AddOmniauthFieldsToPluginAuthenticatorUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :plugin_authentication_users, :full_name, :string
    add_column :plugin_authentication_users, :uid, :string
    add_column :plugin_authentication_users, :provider, :string
  end
end
