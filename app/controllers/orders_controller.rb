class OrdersController < ApplicationController

  def create
    @order = Order.create order_params
    redirect_to guest_items_path(params[:id])
  end

  private
  def order_params
    params.require(:order).permit(:guest_id, :item_id)
  end
end
