class Image < ActiveRecord::Base
  belongs_to :product
  validates :title, :presence => true
  validates :description, :presence => true
end
