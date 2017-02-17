class CreateImages < ActiveRecord::Migration[5.0]
  def change
    create_table :images do |t|
      t.string :title
      t.string :description
      t.integer :product_id
    end
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
