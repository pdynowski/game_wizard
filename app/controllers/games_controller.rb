class GamesController < ApplicationController

	def index
		@games = Game.all
	end

	def show
		@game = Game.find(params[:id])
	end

	def edit
		@game = Game.find(params[:id])
	end

	def update
		game = Game.find(params[:id])
		game.update(allowed_params)
		redirect_to game_path(game)
	end

	def allowed_params
		params.require(:game).permit(:title, :min_players, :max_players, :description, :external_link)
	end

end
