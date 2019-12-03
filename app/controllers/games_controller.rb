class GamesController < ApplicationController

    def index
<<<<<<< HEAD
        games = game.all
=======
        games = Game.all
>>>>>>> 7a23aa79adf3e2fc3d359e23f142d5d6df0a3d3f
        render json: games.to_json
    end

    def show
<<<<<<< HEAD
        game = games.find(params[:id])
        render json: games
    end

    def create
        game = games.create(games_params)
        render json: games, status: :created
    end

    private 
    def games_params
=======
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
>>>>>>> 7a23aa79adf3e2fc3d359e23f142d5d6df0a3d3f
        params.require(:game).permit(:score, :player_id)
    end
end
