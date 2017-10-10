class CreateSubscriptions < ActiveRecord::Migration[5.1]
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :meal_per_month

      t.timestamps
    end
  end
end
