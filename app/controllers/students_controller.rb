class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @product = Product.where("student_id = ?", @student)
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

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
    else
      render 'edit'
    end
  end

  private

    def student_params
      params.require(:student).permit(:name, :s_class, :s_code, :s_no, :password, :image)
    end
end