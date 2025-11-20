class AddVanillaToMaps < ActiveRecord::Migration[8.1]
  def change
    add_column :maps, :vanilla, :boolean, null: false, default: false
  end
end
