class AddUnitPriceToLineItem < ActiveRecord::Migration
  def change
    add_column :line_items, :unit_price, :float
  end
end
