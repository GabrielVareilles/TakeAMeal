class CreateSubscriptionOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :subscription_orders do |t|
      t.string :state
      t.monetize :amount, currency: { present: false }
      t.jsonb :payment
      t.date :end_date
      t.references :user, foreign_key: true
      t.references :subscription, foreign_key: true

      t.timestamps
    end
  end
end
