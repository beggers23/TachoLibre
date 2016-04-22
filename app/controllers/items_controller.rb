class ItemsController < ApplicationController
  def index
    @nachos = Item.where category:'nacho'
    @tacos = Item.where category:'taco'
    @booze = Item.where category:'booze'

    @order = Order.new

    @guest = Guest.where id: params[:id]
  end
end
