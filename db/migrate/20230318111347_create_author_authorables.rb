class CreateAuthorAuthorables < ActiveRecord::Migration[7.0]
  def change
    create_table :author_authorables do |t|
      t.references :author, index: true, foreign_key: true, null: false
      t.references :authorable, index: true, polymorphic: true, null: false

      t.timestamps
    end
  end
end
