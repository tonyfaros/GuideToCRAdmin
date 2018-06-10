class RemoveUserr < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :nombre, :string
    remove_column :users, :image, :string
    remove_column :users, :authentication_token, :string
  end
end
