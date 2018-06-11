class AddProvinciaToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :provincia, :string
  end
end
