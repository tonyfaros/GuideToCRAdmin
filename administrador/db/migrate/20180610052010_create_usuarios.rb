class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.boolean :admin
      t.string :nombre
      t.string :email
      t.string :password
      t.text :foto

      t.timestamps
    end
  end
end
