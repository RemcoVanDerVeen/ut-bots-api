class CreatePlayerModelSkinFaces < ActiveRecord::Migration[7.0]
  def change
    create_table :player_model_skin_faces do |t|
      t.string :name, null: false
      t.string :description
      t.references :player_model_skin, index: true, foreign_key: true, null: false
      t.boolean :vanilla, null: false, default: false
      t.string :ut_value, null: false

      t.timestamps
    end
  end
end
