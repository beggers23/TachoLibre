class AdminsController < ApplicationController

  before_action :authenticate!, only: :index

  def index
    if current_user.admin != true
      redirect_to root_path
    end
    @servers = Server.all
    @items = Item.all

    @categories = ['nacho','taco','booze']

    @new_item = Item.new

    @table = Table.new
    @new_server = Server.new
  end

end
