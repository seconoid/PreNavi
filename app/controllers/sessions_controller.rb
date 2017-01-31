class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      flash[:info] = 'ログインしました。'
      log_in user
      redirect_to profile_path
    else
      flash.now[:danger] = 'おや？なにかがおかしいです。'
      render 'new'
    end
  end

  def destroy
    flash[:info] = 'ログアウトしました。'
    log_out
    redirect_to root_url
  end
end
