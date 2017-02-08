class AppealsController < ApplicationController
  def new
    @user = User.find params[:user_id]
    @note = @user.appelas.build
  end

  def  edit

end
