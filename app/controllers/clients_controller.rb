class ClientsController < ApplicationController
  def show
    @client = Client.find(params[:id])
    @user = User.find(@client[:user_id])
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

  def update
    @client = Client.find(params[:id])
    if @client.update_attributes(client_params)
      flash[:success] = "タグ情報を更新しました。"
      redirect_to profile_path
    else
      render 'edit'
    end
  end

  private

    def client_params
      params.require(:client).permit(:skill_list, :system_list, :personality_list)
    end
end
