class AdminsController < ApplicationController
  def index
    @servers = Server.all
    @items = Item.all


    @new_server = Server.new
  end
end
