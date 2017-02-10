class AppealsController < ApplicationController
  def new
    @user = User.find(session[:user_id])
    @appeal = @user.appeals.new
  end

  def create
    params[:appeals].each do |param|
      @appeal = Appeal.new(param.permit(:user_id, :caption, :body))
      @appeal.save
    end
    flash[:success] = "プロフィールを更新しました。"
    redirect_to profile_path
  end

end
