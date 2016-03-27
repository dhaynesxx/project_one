class AddStatusToOrders < ActiveRecord::Migration
  def change
      add_column :orders, :order_status, :text
      add_column :orders, :purchase_date, :date
      add_column :orders, :payment_date, :date
      add_column :orders, :shipped_date, :date
      add_column :orders, :finalised_date, :date
  end
end
