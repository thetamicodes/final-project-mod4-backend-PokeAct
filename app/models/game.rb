class Game < ApplicationRecord
  belongs_to :player
  has_many :game_cards
  has_many :cards, through: :game_cards

  def self.highscores_with_names
    allScores = Game.all.map { |game| {username: game.player.username, score: game.score} }
    namesUniq = allScores.sort_by{|hsh| hsh[:score]}.reverse
    onlyFirstTen = namesUniq.uniq
    onlyFirstTen[0..9]
    
  end

end


