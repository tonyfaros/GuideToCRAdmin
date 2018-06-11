class AddCategoryToPlaces < ActiveRecord::Migration[5.2]
  def change
    add_column :places, :categoria, :string
  end
end
