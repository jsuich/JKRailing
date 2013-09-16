class SessionController < ApplicationController
  def index
  end

  def new
    session[:user_id] = current_user.id
  end
end
