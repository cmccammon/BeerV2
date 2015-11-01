class BeersController < ApplicationController
  before_action :set_beer, only: [:edit, :update, :destroy]

  def index
    if params[:search].nil?
      @beers = []
    else
      @beers = Brewery.search.all(q: params[:search])
    end
    whobeer
  end

  def show
    @brewery_name = Brewery.breweries.find('E6WUse')
    @brewery = Brewery.brewery('E6WUse').beers
  end

  def whobeer
    @who_beer = Brewery.beers.find('uxxOlc')
  end
end
