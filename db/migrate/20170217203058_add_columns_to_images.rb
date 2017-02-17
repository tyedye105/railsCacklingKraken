class AddColumnsToImages < ActiveRecord::Migration[5.0]
  def up
    add_attachment :images, :product_image
  end

  def down
    remove_attachment :images, :product_image
  end
end
