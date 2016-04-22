class AddsForeignKeys < ActiveRecord::Migration
  def change
    add_foreign_key :tables, :servers
    add_foreign_key :guests, :tables
    add_foreign_key :orders, :guests
    add_foreign_key :orders, :items
  end
end
