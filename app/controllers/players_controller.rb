class PlayersController < ApplicationController
   
    def index
        players = Player.All
        render json: palyers.to_json
    end

    def show
        player = Player.find(params[:id])
        render json: player.to_json
    end

    def create
        player = Player.create(player_params)
        render json: player, status: :created
    end

    private 
    def player_params
        params.require(:player).permit(:username)
    end

end
