class CreateWeapons < ActiveRecord::Migration[7.0]
  def change
    create_table :weapons do |t|
      t.string :name, null: false
      t.string :description
      t.boolean :vanilla, null: false, default: false
      t.string :ut_value, null: false

      t.timestamps
    end
  end
end
