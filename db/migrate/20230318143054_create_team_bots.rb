class CreateTeamBots < ActiveRecord::Migration[7.0]
  def change
    create_table :team_bots do |t|
      t.references :bot, index: true, foreign_key: true, null: false
      t.references :team, index: true, foreign_key: true, null: false
      t.boolean :is_human, null: false, default: false
      t.integer :position, null: false
      t.boolean :is_enabled, null: false, default: true
      t.boolean :is_captain, null: false, default: false

      t.timestamps
    end
  end
end
