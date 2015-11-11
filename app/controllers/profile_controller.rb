class ProfileController < ApplicationController
  def index
    @user_posts = current_user.posts.order('created_at DESC')
    @user = current_user

  end

  def show
    @beer = Brewery.beers.find(@post.beer_id)
  end

end
