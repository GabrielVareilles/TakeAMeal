ActiveAdmin.register Meal do
permit_params :name, :description, :restaurant_id, :created_at, :updated_at, :photo
end
