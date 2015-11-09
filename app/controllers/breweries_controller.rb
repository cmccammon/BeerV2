class BreweriesController < ApplicationController

  def index
    if params[:search].blank?
      @breweries = []
    else
      @breweries = Brewery.search.breweries(q: params[:search]).take(20)
    end
  end

  def show
    @brewery = Brewery.brewery(params[:id]).beers
    @brewery_name = Brewery.breweries.find(params[:id])
  end

end
