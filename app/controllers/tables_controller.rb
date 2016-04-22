class TablesController < ApplicationController

  def show
    @table = Table.find params[:id]
    @guests = Guest.where table_id: @table
    @guest = Guest.new
  end
end
