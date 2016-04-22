class AdminsController < ApplicationController
  def index
    @servers = Server.all
    @items = Item.all
    @new_item = Item.new
    
    @table = Table.new
    @new_server = Server.new
  end
end
