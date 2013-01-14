class SessionsController < ApplicationController
  def new
    redirect_to dashboard_path, notice: 'You are already logged in' if current_user
  end

  def create
    user = User.find_by_email(params[:email])
logger.info "PARAMS " + params.inspect
logger.info "USER " + user.inspect
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: "Logged In"
    else
      flash.now[:error] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out"
  end
end
