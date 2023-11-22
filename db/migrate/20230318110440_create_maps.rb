class CreateMaps < ActiveRecord::Migration[7.0]
  def change
    create_table :maps do |t|
      t.string :name, null: false
      t.string :description
      t.references :game_mode, index: true, foreign_key: true

      t.timestamps
    end
  end
end
