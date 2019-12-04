class GamesController < ApplicationController

    def index
        games = Game.all
        render json: games.to_json
    end

    def show
        game = Game.find(params[:id])
        render json: game
    end

    def create
        game = Game.create(game_params)
        render json: game, status: :created
    end

    def highscore
        games = Game.highscores_with_names
        render json: games
    end 

    private 

    def game_params
        params.require(:game).permit(:score, :player_id)
    end
end
