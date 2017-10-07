ActiveAdmin.register Subscription do
permit_params :type, :meal_per_month, :created_at, :updated_at
end
