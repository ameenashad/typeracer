class CreateGamePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :game_players do |t|
      t.references :game
      t.references :player
      t.timestamps
    end
  end
end
