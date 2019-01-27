class Game < ApplicationRecord
  has_one  :paragraph
  has_many :game_players
  has_many :players, through: :game_players
end
