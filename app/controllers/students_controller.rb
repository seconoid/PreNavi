class StudentsController < ApplicationController
  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to @student
    else
      render 'new'
    end
  end

  private

    def student_params
      params.require(:student).permit(:name, :s_class, :s_code, :s_no, :password)
    end
end