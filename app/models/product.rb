class Product < ActiveRecord::Base
  belongs_to :user
  validates :name, :presence => true
  validates :description, :presence => true
  validates :found_in, :presence => true
  validates :going_price, :presence => true
end
