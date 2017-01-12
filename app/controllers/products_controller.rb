class ProductsController < ApplicationController
  def show
    @product = Product.find(params[:id])
    @student = Student.find(@product.student_id)
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product.student_id = session[:student_id]
    if @product.save
      log_in @product
      flash[:success] = "作品登録を行いました。"
      redirect_to @product
    else
      render 'new'
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  private

    def product_params
      params.require(:product).permit(:student_id, :name, :about)
    end
end
