class ChefsController < ApplicationController

  before_action :authenticate!, only: :index

  def index

    if current_user.admin != true
      if current_user.chef != true
        redirect_to root_path
      end
    end

    @orders = Order.all
    @orders = @orders.sort_by &:created_at
    @items = Item.all
  end
end
