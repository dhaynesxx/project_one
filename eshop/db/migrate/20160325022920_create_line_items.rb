class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.integer :quantity
      t.decimal :unit_cost
      t.decimal :unit_tax
      t.integer :order_id
      t.integer :product_id
      t.timestamps null: false
    end
  end
end
