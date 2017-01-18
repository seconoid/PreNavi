class StudentsController < ApplicationController
  before_action :logged_in_student, only: [:edit, :update]
  before_action :correct_student,     only: [:edit, :update]
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
      flash[:success] = "学生情報を変更しました"
      redirect_to @student
    else
      render 'edit'
    end
  end

  private

    def student_params
      params.require(:student).permit(:name, :s_class, :s_code, :s_no, :password, :image)
    end

    def logged_in_student
      unless logged_in?
        flash[:danger] = "ログインが必要です。"
        redirect_to login_url
      end
    end

    def correct_student
      @student = Student.find(params[:id])
      redirect_to(root_url) unless current_student?(@student)
    end
end