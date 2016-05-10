class SessionsController < ApplicationController

  skip_before_action :authenticate_user, only: [:new, :create]

  def new
  end

  def create
    user = find_user
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Logged in!"
      redirect_to :root
    else
      flash[:alert] = "Invalid name or password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "Logged out!"
    redirect_to root_url
  end

  private

  def find_user
    User.find_by(name: params[:name])
  end

end
