class UsersController < ApplicationController
  def create
    @user = User.create(params[:user])
    if @user.id
      session[:user_id] = @user.id
      redirect_to @posts
    else
      render "session/create"
    end
  end

end
