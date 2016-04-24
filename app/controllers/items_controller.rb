class ItemsController < ApplicationController
  def index
    @nachos = Item.where category:'nacho'
    @tacos = Item.where category:'taco'
    @booze = Item.where category:'booze'

    @order = Order.new

    @guest = Guest.where id: params[:id]
  end
  def create
    item = Item.create item_params
    redirect_to admins_path
  end

  def update
    item = Item.find params[:id]
    item.update item_params

    redirect_to admins_path
  end

  def destroy
    item = Item.find params[:id]

    orders = Order.where item_id: item.id

    orders.delete_all
    item.delete

    redirect_to admins_path
  end

  private

  def item_params
    params.require(:item).permit(:name,:category,:price)
  end
end
