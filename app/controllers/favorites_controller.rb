class FavoritesController < ApplicationController
  def create
    @client = User.find(session[:user_id]).client
    @student = Student.find(params[:id])
    @favorite = Favorite.new(student_id: @student.id, client_id: @client.id)
    if @favorite.save
      flash[:info] = 'お気に入り登録しました。'
      redirect_to :back
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      flash[:info] = 'お気に入りを解除しました。'
      redirect_to :back
    end
  end
end
