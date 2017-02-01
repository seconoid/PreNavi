class FavoritesController < ApplicationController
  def create
    @client = User.find(session[:user_id]).client
    @student = Student.find(params[:id])
    @favorite = Favorite.new(student_id: @student.id, client_id: @client.id)
    if @favorite.save
      redirect_to @student
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      redirect_to client_path(session[:id])
    end
  end
end
