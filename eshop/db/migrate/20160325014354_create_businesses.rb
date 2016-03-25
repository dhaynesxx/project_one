class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.text :company_name
      t.text :trading_name
      t.text :abn
      t.text :logo
      t.text :email
      t.text :phone
      t.decimal :tax_rate
      t.timestamps null: false
    end
  end
end
