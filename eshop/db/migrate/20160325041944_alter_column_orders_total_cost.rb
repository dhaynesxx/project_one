class AlterColumnOrdersTotalCost < ActiveRecord::Migration
  def self.up
    change_table :orders do |t|
      t.change :total_cost, :float
      t.change :total_tax, :float
      t.change :discount_amount, :float
    end
  end
  def self.down
    change_table :orders do |t|
      t.change :total_cost, :decimal
      t.change :total_tax, :decimal
      t.change :discount_amount, :decimal
    end
  end
end
