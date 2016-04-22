class Guest < ActiveRecord::Base
  belongs_to :table
  has_many :items, through: :orders, :dependent => :delete_all
end
