class CreateModSubTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :mod_sub_types do |t|
      t.string :name, null: false
      t.references :mod_type, index: true, foreign_key: true, null: false

      t.timestamps
    end
  end
end
