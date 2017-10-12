ActiveAdmin.register Subscription do
permit_params :name, :meal_per_month, :created_at, :updated_at
end
