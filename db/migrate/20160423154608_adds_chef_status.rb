class AddsChefStatus < ActiveRecord::Migration
  def change
    add_column :servers, :chef, :boolean, :default => false
    add_column :servers, :waiter, :boolean, :default => false
  end
end
