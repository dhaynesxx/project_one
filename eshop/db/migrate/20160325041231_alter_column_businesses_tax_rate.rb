class AlterColumnBusinessesTaxRate < ActiveRecord::Migration
  def self.up
    change_table :businesses do |t|
      t.change :tax_rate, :float
    end
  end
  def self.down
    change_table :businesses do |t|
      t.change :tax_rate, :decimal
    end
  end
end
