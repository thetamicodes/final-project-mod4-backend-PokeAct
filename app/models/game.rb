class Game < ApplicationRecord
  belongs_to :player
  has_many :game_cards
  has_many :cards, through: :game_cards

  def self.highscores_with_names
    Game.all.map {|game| 
      {username: game.player.username, score: game.score}
    }
  end

end
