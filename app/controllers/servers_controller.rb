class ServersController < ApplicationController
  before_action :authenticate!, only: :profile

  def login

  end

  def create
    server = Server.create server_params
    6.times { Table.create server_id: server.id }
    redirect_to admins_path
  end

  def new
    @server = Server.new
  end

  def destroy
    server = Server.find params[:id]
    tables = Table.where server_id: server.id
    guests = Guest.where table_id: tables.each { |table| table.id }
    orders = Order.where guest_id: guests.each { |guest| guest.id }

    orders.delete_all
    guests.delete_all
    tables.delete_all

    Server.delete server
    
    session[:server_id] = nil

    redirect_to admins_path
  end

  def profile
    authenticate!
    @server = current_user
    @tables = Table.where server_id: @server.id
  end

  private

  def server_params
    params.require(:server).permit(:name,:password, :admin, :waiter, :chef)
  end
end
