class PlayersController < ApplicationController
   
    def index
        players = Player.all
        render json: players.to_json
    end

    def show
        player = Player.find(params[:id])
        render json: player
    end

    def create
        player = Player.create(player_params)
        render json: player, status: :created
        debugger
    end

    private 
    def player_params
        params.require(:player).permit(:username)
    end

end
