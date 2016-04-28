class GamesController < ApplicationController
  def index
    @games = @category.games

    respond_to do |f|
     f.html
     f.json { render json: { category: @category, games: @games } }
   end
 end
end
