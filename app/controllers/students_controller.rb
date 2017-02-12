class StudentsController < ApplicationController
  def index
    @search = Student.search(params[:q])
    @students = @search.result

    respond_to do |format|
      format.html
      format.json { render json: @topics}
    end
    # @students = Student.paginate(page: params[:page])
  end

  def show
    @student = Student.find(params[:id])
    @user = User.find(@student[:user_id])
    @product = Product.find_by(student_id: @student.id)
    if client?
      @favorite = Favorite.find_by(client_id: current_user.client.id, student_id: params[:id])
    end
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(params[:user])
    @student.s_class = @student.s_class.upcase
    if @student.save
      log_in @student
      flash[:success] = "Prenaviにようこそ！"
      redirect_to @student
    else
    end
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    if @student.update_attributes(student_params)
      flash[:success] = "タグ情報を更新しました。"
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  private

    def student_params
      params.require(:student).permit(:skill_list, :personality_list)
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