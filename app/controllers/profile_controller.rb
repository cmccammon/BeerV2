class ProfileController < ApplicationController
  def index
    @user_posts = current_user.posts
    @user = current_user

  end

  def show
    @beer = Brewery.beers.find(@post.beer_id)
  end

end
