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

  def edit
    @user = User.find(session[:user_id])
    @appeals = @user.appeals
  end

  def update
    @appeals = appeals_params.map do |id, appeal_param|
      appeal = Appeal.find(id)
      appeal.update_attributes(appeal_param)
      appeal
    end
    redirect_to profile_path
  end

  private
    def appeals_params
      params.permit(appeals: [:caption, :body])[:appeals]
    end

end