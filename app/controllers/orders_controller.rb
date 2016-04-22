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


  private
  def order_params
    params.require(:order).permit(:guest_id, :item_id)
  end
end
