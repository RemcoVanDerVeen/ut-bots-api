class CreateRatings < ActiveRecord::Migration[7.0]
  def change
    create_table :ratings do |t|
      t.integer :value, null: false
      t.references :rateable, index: true, polymorphic: true, null: false

      t.timestamps
    end
  end
end
