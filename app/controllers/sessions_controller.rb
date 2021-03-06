class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      flash[:success] = 'Logged in Successfully!!!'
      log_in user
      remember user
      redirect_to root_url
    else
      flash[:danger] = 'Invalid credentials'
      render 'new'
    end
  end

  def delete
    log_out if logged_in?
    redirect_to root_url
  end
end
