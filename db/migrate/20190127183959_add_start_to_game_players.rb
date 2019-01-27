class AddStartToGamePlayers < ActiveRecord::Migration[5.1]
  def change
    add_column :game_players, :start_time, :datetime
    add_column :game_players, :end_time, :datetime
  end
end
