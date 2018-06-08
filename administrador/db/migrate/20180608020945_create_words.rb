class CreateWords < ActiveRecord::Migration[5.2]
  def change
    create_table :words do |t|
      t.string :nombre
      t.text :descripcion
      t.text :ejemplo
      t.boolean :aceptado

      t.timestamps
    end
  end
end
