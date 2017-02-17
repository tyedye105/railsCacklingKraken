class AddColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :user_name, :string
    add_column :users, :name, :string
    add_column :users, :is_admin, :boolean, default: false

  end
end
