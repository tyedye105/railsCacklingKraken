class Product < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_one :image
  validates :name, :presence => true
  validates :description, :presence => true
  validates :found_in, :presence => true
  validates :going_price, :presence => true
  class User < ActiveRecord::Base
  has_attached_file :product_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\z/
end

end
