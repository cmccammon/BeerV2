class BeersController < ApplicationController
  before_action :set_beer, only: [:edit, :update, :destroy]

  def index
    if params[:search].blank?
      @beers = []
    else
      @beers = Brewery.search.beers(q: params[:search], withBreweries: 'y').take(20)
    end
      #@brewery = Brewery.search.breweries(q: params[:n]).take(10)
  end

  def show
    @beer = Brewery.beers.find(params[:id])
  end
end
