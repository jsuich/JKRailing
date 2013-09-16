class SessionController < ApplicationController
  def index
  end

  def create
    @user = User.find_by_email(params[:session][:email])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to posts_path
    else
      render :index
    end
  end


end
