class ChefsController < ApplicationController

  def index
    @orders = Order.all
    @orders = @orders.sort_by &:created_at
    @items = Item.all
  end
end
