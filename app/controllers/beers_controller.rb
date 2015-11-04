class BeersController < ApplicationController
  before_action :set_beer, only: [:edit, :update, :destroy]

  def index
    if params[:search].nil?
      @beers = []
    else
      @beers = Brewery.search.beers(q: params[:search])
    end
    whobeer
  end

  def show
    @beer = Brewery.beers.find(params[:beer_id])
  end

  def whobeer
    @who_beer = Brewery.beers.find('uxxOlc')
  end
end
