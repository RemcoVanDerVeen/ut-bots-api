class CreateCombatStyles < ActiveRecord::Migration[7.0]
  def change
    create_table :combat_styles do |t|
      t.string :name, null: false
      t.string :description
      t.decimal :ut_value, precision: 4, scale: 2, null: false

      t.timestamps
    end
  end
end
