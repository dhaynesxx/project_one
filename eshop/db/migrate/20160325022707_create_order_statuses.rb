class CreateOrderStatuses < ActiveRecord::Migration
  def change
    create_table :order_statuses do |t|
      t.date :basket
      t.date :purchase
      t.date :payment
      t.date :shipped
      t.date :finalised
      t.integer :order_id
      t.timestamps null: false
    end
  end
end
