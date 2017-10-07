class AddFieldsToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :name, :string
    add_column :restaurants, :address, :string
    add_column :restaurants, :address2, :string
    add_column :restaurants, :phone_number, :string
    add_column :restaurants, :category, :string
    add_column :restaurants, :max_meal, :integer
    add_column :restaurants, :city, :string
    add_column :restaurants, :post_code, :string
  end
end
