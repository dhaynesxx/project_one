class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.text :invoice_number
      t.decimal :total_cost
      t.decimal :total_tax
      t.decimal :discount_amount
      t.integer :user_id
      t.integer :order_status_id 
      t.timestamps null: false
    end
  end
end
