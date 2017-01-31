class UsersController < ApplicationController
  def new
    @user = User.new
    if params[:attr] == 'student'
      @user.build_student
    else
      @user.build_client
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Prenaviにようこそ！"
      redirect_to @user
    else
      render 'new'
    end
  end

  private
    def user_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :image,
        :user_attr,
        student_attributes: [
          :s_class,
          :s_code,
          :s_no,
        ])
    end
end
