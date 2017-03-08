class ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
    @client = Client.find(@review.client.id)
  end

  def new
    @client = User.find(session[:user_id]).client
    @student = Student.find(params[:id])
    @review = Review.new
  end

  def create
    @student = Student.find(params[:id])
    @review = Review.new(review_params)
    if @review.save
      flash[:info] = 'レビューが完了しました。'
      redirect_to @student
    else
      render 'new'
    end
  end

  private

    def review_params
      params.require(:review).permit(:client_id, :student_id, :plan_point, :concept_point, :impl_point, :comment)
    end
end
