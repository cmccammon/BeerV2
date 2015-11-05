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
    @beer = Brewery.beers.find(params[:id])
  end

end
