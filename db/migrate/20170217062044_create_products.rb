class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |p|
      p.string :name
      p.string :description
      p.string :found_in
      p.integer :going_price
      p.integer :user_id  
    end
  end
end
