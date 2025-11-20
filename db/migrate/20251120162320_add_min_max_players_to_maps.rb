class AddMinMaxPlayersToMaps < ActiveRecord::Migration[8.1]
  def change
    add_column :maps, :min_players, :integer
    add_column :maps, :max_players, :integer
  end
end
