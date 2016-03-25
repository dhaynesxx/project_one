class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.text :email
      t.text :password_digest
      t.boolean :admin, :default => false
      t.boolean :master, :default => false
      t.text :name
      t.text :phone
      t.date :birthday
      t.integer :reward_level
      t.integer :business_id
      t.timestamps null: false
    end
  end
end
