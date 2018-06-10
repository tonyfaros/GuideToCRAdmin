class RemoveUser < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :reset_password_token, :string
    remove_column :users, :reset_password_sent_at, :string
    remove_column :users, :remember_created_at, :string
  end
end
