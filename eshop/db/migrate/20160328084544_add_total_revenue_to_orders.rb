class AddTotalRevenueToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :total_revenue, :float
  end
end
