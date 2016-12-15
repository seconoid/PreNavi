class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.s_class = @student.s_class.upcase
    if @student.save
      log_in @student
      flash[:success] = "Prenaviにようこそ！"
      redirect_to @student
    else
      render 'new'
    end
  end

  private

    def student_params
      params.require(:student).permit(:name, :s_class, :s_code, :s_no, :password, :image)
    end
end