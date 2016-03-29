class AddShippingIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :shipping_id, :string
  end
end
