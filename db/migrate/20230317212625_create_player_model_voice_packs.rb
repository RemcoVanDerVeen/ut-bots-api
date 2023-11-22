class CreatePlayerModelVoicePacks < ActiveRecord::Migration[7.0]
  def change
    create_table :player_model_voice_packs do |t|
      t.references :player_model, index: true, foreign_key: true, null: false
      t.references :voice_pack, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
