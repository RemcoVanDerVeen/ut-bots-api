class CreatePlayerModelSkins < ActiveRecord::Migration[7.0]
  def change
    create_table :player_model_skins do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :has_all_colours, null: false, default: false
      t.references :player_model, index: true, foreign_key: true, null: false
      t.boolean :vanilla, null: false, default: false
      t.string :ut_value, null: false

      t.timestamps
    end
  end
end
