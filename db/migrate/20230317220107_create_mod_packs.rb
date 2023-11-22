class CreateModPacks < ActiveRecord::Migration[7.0]
  def change
    create_table :mod_packs do |t|
      t.string :name, null: false
      t.references :mod_type, index: true, foreign_key: true, null: false
      t.references :mod_sub_type, index: true, foreign_key: true

      t.timestamps
    end
  end
end
