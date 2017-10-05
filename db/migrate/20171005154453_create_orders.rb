class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :pick_up_time
      t.string :status
      t.references :user, foreign_key: true
      t.references :meal, foreign_key: true
      t.timestamps
    end
  end
end
