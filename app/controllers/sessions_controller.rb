class SessionsController < ApplicationController
  def new
  end

  def create
    student = Student.find_by(s_code: params[:session][:s_code].to_i)
    if student && student.authenticate(params[:session][:password])
      flash[:info] = 'ログインしました。'
      log_in student
      redirect_to student
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
