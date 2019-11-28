class Game < ApplicationRecord
  belongs_to :player
  has_many :game_cards
  has_many :cards, through: :game_cards
end
