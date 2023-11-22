class CreateVoicePacks < ActiveRecord::Migration[7.0]
  def change
    create_table :voice_packs do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :has_all_sounds, null: false, default: false
      t.boolean :vanilla, null: false, default: false
      t.string :ut_value, null: false

      t.timestamps
    end
  end
end
