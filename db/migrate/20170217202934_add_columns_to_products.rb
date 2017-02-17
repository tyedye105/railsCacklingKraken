class AddColumnsToProducts < ActiveRecord::Migration[5.0]
  def up
    add_attachment :products, :product_image
  end

  def down
    remove_attachment :products, :product_image
  end

end
