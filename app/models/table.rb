class Table < ActiveRecord::Base
  belongs_to :server
  has_many :guests, :dependent => :delete_all
end
