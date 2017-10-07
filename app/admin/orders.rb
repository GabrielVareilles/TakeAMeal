ActiveAdmin.register Order do
permit_params :pick_up_time, :status, :user_id, :meal_id, :created_at, :updated_at
end
