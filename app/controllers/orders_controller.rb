class OrdersController < ApplicationController

  def create
    order = Order.create order_params
    redirect_to guest_items_path(order.guest_id)
  end

  def destroy
    order = Order.find params[:id]
    guest = Guest.find order.guest_id
    Order.destroy order
    redirect_to guest_path(guest.id)
  end

  def update
    order = Order.find params[:id]
    order.update (order_params)
    redirect_to chefs_path
  end


  private
  def order_params
    params.require(:order).permit(:guest_id, :item_id, :order_status)
  end
end
