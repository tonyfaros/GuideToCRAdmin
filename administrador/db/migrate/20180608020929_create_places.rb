class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :nombre
      t.string :clima
      t.string :tarifa
      t.text :descripcion
      t.text :datos
      t.string :ubicacion
      t.text :foto
      t.boolean :aceptado

      t.timestamps
    end
  end
end
