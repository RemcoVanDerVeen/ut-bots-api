class CreateXbotsConfigurationBotlists < ActiveRecord::Migration[7.0]
  def change
    create_table :xbots_configuration_botlists do |t|
      t.references :xbots_configuration, index: true, foreign_key: true, null: false
      t.references :botlist, index: true, foreign_key: true, null: false
      t.integer :position
      t.boolean :is_enabled, null: false, default: false

      t.timestamps
    end
  end
end
