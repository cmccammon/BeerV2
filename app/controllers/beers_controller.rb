class BeersController < ApplicationController
  before_action :set_beer, only: [:edit, :update, :destroy]

  def index
    if params[:search].nil?
      @beers = []
    else
      @beers = Brewery.search.beers(q: params[:search])
    end

  end

  def show
    @beer = Brewery.beers.find(params[:beer_id])
  end

  def brewery
    if params[:search].nil?
      @breweries = []
    else
      @breweries = Brewery.search.breweries(q: params[:search])
    end
  end
  

end
