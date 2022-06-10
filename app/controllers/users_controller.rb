class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @follow = @user.followers.find_by(follower: @user)

    #@post = Post.new
    @posts = Post.where(user: @user)
    authorize @user
  end
end
