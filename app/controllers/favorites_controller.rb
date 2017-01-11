class FavoritesController < ApplicationController
  def create
    @client_id = session[:id]
    @student_id = Student.find(params[:id]).id
    @favorite = Favorite.new(student_id: @student_id, client_id: @client_id)
    if @favorite.save
      redirect_to students_path
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    if @favorite.destroy
      redirect_to client_path(session[:id])
    end
  end
end
