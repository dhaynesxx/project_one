class AlterColumnLineItemsUnitCost < ActiveRecord::Migration
  def self.up
    change_table :line_items do |t|
      t.change :unit_cost, :float
      t.change :unit_tax, :float
    end
  end
  def self.down
    change_table :line_items do |t|
      t.change :unit_cost, :decimal
      t.change :unit_tax, :decimal
    end
  end
end
