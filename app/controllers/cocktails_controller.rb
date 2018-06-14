class CocktailsController < ApplicationController

  def index
    @cocktails = Cocktail.new
  end


  def new
    @dose = Dose.new
  end

  def show
  end

  def create
  end

end
