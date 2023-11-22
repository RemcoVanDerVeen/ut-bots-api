class CreateModPackContents < ActiveRecord::Migration[7.0]
  def change
    create_table :mod_pack_contents do |t|
      t.references :mod_pack, index: true, foreign_key: true, null: false
      t.references :content, polymorphic: true, null: false, index: true

      t.timestamps
    end
  end
end
