class CreateBots < ActiveRecord::Migration[7.0]
  def change
    create_table :bots do |t|
      t.string :name, null: false
      t.references :model, index: true, foreign_key: { to_table: :player_models }, null: false
      t.references :skin, index: true, foreign_key: { to_table: :player_model_skins }, null: false
      t.references :face, index: true, foreign_key: { to_table: :player_model_skin_faces }, null: false
      t.references :colour, index: true, foreign_key: true
      t.integer :skill_adjust
      t.decimal :skill_adjust_ut, precision: 4, scale: 2
      t.references :voice_pack, index: true, foreign_key: true, null: false
      t.references :favourite_weapon, index: true, foreign_key: { to_table: :weapons }
      t.integer :bot_accuracy
      t.decimal :bot_accuracy_ut, precision: 4, scale: 2
      t.integer :alertness
      t.decimal :alertness_ut, precision: 4, scale: 2
      t.integer :camping
      t.decimal :camping_ut, precision: 4, scale: 2
      t.integer :strafing_ability
      t.decimal :strafing_ability_ut, precision: 4, scale: 2
      t.references :combat_style, index: true, foreign_key: true, null: false
      t.boolean :has_jumpy_behaviour, null: false, default: false

      t.timestamps
    end
  end
end
