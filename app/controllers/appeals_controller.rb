class AppealsController < ApplicationController
  def new
    @user = User.find(session[:user_id])
    @appeal = @user.appeals.new
  end

  def create
    @appeal = Appeal.new(appeal_params)
    if @appeal.save
      redirect_to root
    else
      redirect_to root
    end
  end

  def  edit
  end

  private
    def appeal_params
      params.require(:appeal).permit(
        :user_id,
        :caption,
        :body
        )
    end
end
