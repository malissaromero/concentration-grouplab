class GameController < ApplicationController
  def index
    @games = Game.all
  end

  def create
    @game = Game.create!(game_params)
  end

  private
   def game_params
     params.permit(:win_time)
   end
end
