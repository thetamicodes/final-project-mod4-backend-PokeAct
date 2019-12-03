class GamesController < ApplicationController

    def index
        games = game.all
        render json: games.to_json
    end

    def show
        game = games.find(params[:id])
        render json: games
    end

    def create
        game = games.create(games_params)
        render json: games, status: :created
    end

    private 
    def games_params
        params.require(:game).permit(:score, :player_id)
    end
end
