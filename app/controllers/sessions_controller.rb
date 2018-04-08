class SessionsController < ApplicationController
  before_action only: [:new, :create] {authorize User}
  before_action only: [:destroy] {authorize User}

  def new
  end

  def create
    user = User.find_by_email params[:session][:email]
    if user.try :authenticate, params[:session][:password]
      session[:user_id] = user.id
      return redirect_to user
    end
    flash.now[:error] = 'Invalid email or password'
    render 'new'
  end

  def destroy
    session[:user_id] = nil if session[:user_id]
    redirect_to root_path
  end
end
