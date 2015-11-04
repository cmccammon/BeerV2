class ProfileController < ApplicationController
  def index
    @user_posts = current_user.posts
  end

  def show

  end

end
