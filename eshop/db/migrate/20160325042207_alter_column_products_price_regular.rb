class AlterColumnProductsPriceRegular < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.change :unit_cost_price, :float
      t.change :price_regular, :float
      t.change :price_sale, :float
    end
  end
  def self.down
    change_table :products do |t|
      t.change :unit_cost_price, :decimal
      t.change :price_regular, :decimal
      t.change :price_sale, :decimal
    end
  end
end
