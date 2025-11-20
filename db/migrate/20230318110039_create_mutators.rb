class CreateMutators < ActiveRecord::Migration[7.0]
  def change
    create_table :mutators do |t|
      t.string :name, null: false
      t.string :description

      t.timestamps
    end
  end
end
