class ClientsController < ApplicationController
  def show
    @client = Client.find(params[:id])
    @user = User.find(@client[:user_id])
    @favorites = Favorite.where("client_id = ?", @client)
  end

  def new
    @client = Client.new
  end

  def create
    @client = Client.new(client_params)
    if @client.save
      log_in @client
      flash[:success] = "Prenaviにようこそ！"
      redirect_to @client
    else
      render 'new'
    end
  end

  private

    def client_params
      params.require(:client).permit(:name, :email, :password)
    end
end
