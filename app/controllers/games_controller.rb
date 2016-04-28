class GamesController < ApplicationController
  before_filter :set_category


  def index
    @category = Category.find(params[:category_id])
    @games = @category.games
  end

  def show
    @category = Category.find(params[:category_id])
    @games = @category.games.find(params[:id])
  end

  def create_list
    @game = Game.new(game_params)
    @game.category = @category

    if @game.save
      redirect_to category_game_path(@category, @game), notice: "Game created succesfully"
    else
      render "new"
    end
  end

  protected

  def set_category
    @category = Category.find(params[:category_id])
  end
end
