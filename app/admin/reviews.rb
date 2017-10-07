ActiveAdmin.register Review do
permit_params :rating, :comment, :order_id, :created_at, :updated_at
end

