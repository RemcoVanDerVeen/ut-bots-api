class CreateColours < ActiveRecord::Migration[7.0]
  def change
    create_table :colours do |t|
      t.string :name
      t.string :hex
      t.string :rgb
      t.boolean :is_team_colour, null: false, default: false
      t.decimal :ut_value

      t.timestamps
    end
  end
end
