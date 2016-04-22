class Item < ActiveRecord::Base
  has_many :guests, through: :orders, :dependent => :delete_all
end
