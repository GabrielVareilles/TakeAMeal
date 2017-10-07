ActiveAdmin.register User do
permit_params :first_name, :last_name, :email, :remember_created_at, :sign_in_count, :last_sign_in_at, :company, :post_code
end
