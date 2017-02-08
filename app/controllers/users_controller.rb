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
    @user = User.find(session[:user_id])
    @student ||= @user.student
    @client ||= @user.client
    if @client
      @favorites = Favorite.where("client_id = ?", @client.id)
    end
  end

  def create
    case params[:user][:user_attr]
    when "1"
      @user = User.new(student_params)
    when "2"
      @user = User.new(client_params)
    end

    if @user.save
      log_in @user
      flash[:success] = "Prenaviにようこそ！"

      redirect_to profile_path
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(session[:user_id])
    if(@user.user_attr == 1)
      user_params = student_params
    else
      user_params = client_params
    end

    if @user.update_attributes(user_params)
      flash[:success] = "プロフィールを更新しました。"
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  private
    def student_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :image,
        :user_attr,
        student_attributes: [
          :s_class,
          :s_code,
          :s_no
        ])
    end

    def client_params
      params.require(:user).permit(
        :name,
        :email,
        :password,
        :image,
        :user_attr,
        client_attributes: [
          :c_id,
          :c_name
        ])
    end
end
