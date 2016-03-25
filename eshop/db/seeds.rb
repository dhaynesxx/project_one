Business.destroy_all
b = Business.create :company_name => 'Test Pty Ltd', :trading_name => "The Shop", :tax_rate => "10%"

User.destroy_all
u1 = User.create :email => 'abc@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => true, :name => 'Dave'
u2 = User.create :email => 'def@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => false, :name => 'Bill'
u3 = User.create :email => 'ghi@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => false, :master => false, :name => 'Bob'

u1.businesses << b
u2.businesses << b
u3.businesses << b

Product.destroy_all
p1 = Product.create :name => "Beer", :inventory => 100, :unit_cost => 2.0, :description => "this is a beer", :current_price => 5.0
p2 = Product.create :name => "Wine", :inventory => 50, :unit_cost => 5.0, :description => "this is a wine", :current_price => 15.0
p3 = Product.create :name => "Coke", :inventory => 200, :unit_cost => 1.0, :description => "this is a coke", :current_price => 2.0

p1.businesses << b
p2.businesses << b
p3.businesses << b

Line_Item.destroy_all
l1 = Line_Item.create :quantity => 3, :unit_cost => 5.0, :unit_tax => 0.45
l2 = Line_Item.create :quantity => 2, :unit_cost => 15.0, :unit_tax => 1.36
l3 = Line_Item.create :quantity => 6, :unit_cost => 2.0, :unit_tax => 0.18

l1.products << p1
l2.products << p2
l3.products << p3

Order.destroy_all
o1 = Order.create :invoice_number => 'INV001', :total_cost => 45.0, :total_tax =>4.07
o2 = Order.create :invoice_number => 'INV002', :total_cost => 12.0, :total_tax =>1.08

o1.line_items << l1 << l2
o2.line_items << l3

u3.orders << o1 << o2
