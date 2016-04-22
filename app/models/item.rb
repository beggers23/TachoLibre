class Item < ActiveRecord::Base
  has_many :guests, through: :orders
end
