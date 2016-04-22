class AdminsController < ApplicationController
  def index
    @servers = Server.all
    @items = Item.all
    @server = Server.new
  end
end
