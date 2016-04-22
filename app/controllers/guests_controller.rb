class GuestsController < ApplicationController

  def show
    @guest = Guest.find params[:id]
    @orders = Order.where guest_id: @guest.id
  end


  def create
    guest = Guest.create guest_params
    redirect_to table_path(guest.table_id)
  end

  private

  def guest_params
    params.require(:guest).permit(:table_id)
  end

end
