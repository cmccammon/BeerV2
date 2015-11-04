class ProfileController < ApplicationController
  def index
    @post = Post.all
  end

  def show
    @user = current_user
  end

end
