class FixImages < ActiveRecord::Migration[5.0]
  def change
    def up
      add_attachment :images, :product_image
    end

    def down
      remove_attachment :images, :product_image
    end
    def up
      add_attachment :products, :product_image
    end

    def down
      remove_attachment :products, :product_image
    end
  end
end
