class AddVanillaToMutators < ActiveRecord::Migration[8.1]
  def change
    add_column :mutators, :vanilla, :boolean, null: false, default: false
  end
end
