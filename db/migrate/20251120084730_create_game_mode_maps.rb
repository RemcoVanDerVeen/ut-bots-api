class CreateGameModeMaps < ActiveRecord::Migration[8.1]
  def change
    create_table :game_mode_maps do |t|
      t.references :game_mode, index: true, foreign_key: true, null: false
      t.references :map, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
