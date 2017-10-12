ActiveAdmin.register SubscriptionOrder do
permit_params :state, :amount_cents, :payment, :end_date, :user_id, :subscription_id, :created_at, :updated_at
end
