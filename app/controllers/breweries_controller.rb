class BreweriesController < ApplicationController


  def index
    if params[:search].nil?
      @breweries = []
    else
      @breweries = Brewery.search.breweries(q: params[:search])
    end
  end

  def show
    @brewery = Brewery.brewery(params[:id]).beers
  end

end
