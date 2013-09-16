class UsersController < ApplicationController
  def create
    @user = User.create(params[:user])
    if @user
      session[:user_id] = @user.id
      redirect_to @posts
    else
    end
  end

end
