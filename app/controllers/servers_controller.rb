class ServersController < ApplicationController
  before_action :authenticate!, only: :profile


  def login

  end

  def create
    server = Server.create server_params
    redirect_to admins_path
  end

  def new
    @server = Server.new
  end

  def destroy
    session[:server_id] = nil

    server = Server.find params[:id]
    Server.delete server.id
    redirect_to admins_path
  end

  def profile
    authenticate!
    @server = current_user
    @tables = Table.where server_id: @server.id
  end

  private

  def server_params
    params.require(:server).permit(:name,:password)
  end
end
