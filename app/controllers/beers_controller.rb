class BeersController < ApplicationController
  before_action :set_beer, only: [:show, :edit, :update, :destroy]

  def index
    @beers = Brewery.search.beers(q: params[:search])
  end

  def show

  end

end
