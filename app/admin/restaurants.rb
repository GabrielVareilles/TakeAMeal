ActiveAdmin.register Restaurant do
  permit_params :remember_created_at, :sign_in_count, :last_sign_in_at, :name, :address, :address2, :phone_number, :category, :city, :post_code, :max_meal, :photo
  filter :remember_created_at
end
