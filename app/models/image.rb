class Image < ActiveRecord::Base
  belongs_to :product
  validates :title, :presence => true
  validates :description, :presence => true
  validates :product_image, :presence => true
  has_attached_file :product_image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :product_image, content_type: /\Aimage\/.*\z/
end
