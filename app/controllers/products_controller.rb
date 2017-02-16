class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @student = Student.find(@product.student_id)
  end

  def new
    @student = User.find(session[:user_id]).student
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "作品登録を行いました。"
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      flash[:success] = "作品情報を更新しました。"
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  private

    def product_params
      params.require(:product).permit(:student_id, :name, :about, :appeal, :image)
    end
end
