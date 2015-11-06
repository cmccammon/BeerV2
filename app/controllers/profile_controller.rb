class ProfileController < ApplicationController
  def index
    @user_posts = current_user.posts
    @beer = Brewery.beers.find(@user_post.beer_id)
  end

  def show
    @beer = Brewery.beers.find(@post.beer_id)
  end

end
