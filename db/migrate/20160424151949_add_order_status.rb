class AddOrderStatus < ActiveRecord::Migration
  def change
    add_column :orders, :order_status, :boolean, :default => false
  end
end
