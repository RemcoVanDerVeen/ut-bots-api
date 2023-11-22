class CreateXbotsConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :xbots_configurations do |t|
      t.string :name, null: false
      t.boolean :is_active
      t.integer :position
      t.boolean :is_enabled
      t.string :description

      t.timestamps
    end
  end
end
