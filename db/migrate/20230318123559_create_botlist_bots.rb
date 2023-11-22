class CreateBotlistBots < ActiveRecord::Migration[7.0]
  def change
    create_table :botlist_bots do |t|
      t.references :botlist, index: true, foreign_key: true, null: false
      t.references :bot, index: true, foreign_key: true, null: false
      t.boolean :is_enabled, null: false, default: true
      t.integer :position, null: false

      t.timestamps
    end
  end
end
