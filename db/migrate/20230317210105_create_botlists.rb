class CreateBotlists < ActiveRecord::Migration[7.0]
  def change
    create_table :botlists do |t|
      t.string :name, null: false
      t.boolean :is_enabled, null: false, default: true
      t.string :description

      t.timestamps
    end
  end
end
