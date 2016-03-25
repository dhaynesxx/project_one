class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.text :name
      t.integer :inventory
      t.decimal :unit_cost_price
      t.text :description
      t.decimal :price_regular
      t.boolean :tax_applies, :default => true
      t.decimal :price_sale
      t.boolean :on_sale, :default => false
      t.integer :business_id
      t.timestamps null: false
    end
  end
end
