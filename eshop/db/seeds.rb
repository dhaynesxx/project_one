Business.destroy_all
b = Business.create :company_name => 'Test Pty Ltd', :trading_name => "The Shop", :tax_rate => "10%"

User.destroy_all
u1 = User.create :email => 'master@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => true, :name => 'Dave'
u2 = User.create :email => 'admin@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => false, :name => 'Bill'
u3 = User.create :email => 'user1@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => false, :master => false, :name => 'Bob'
u3 = User.create :email => 'user2@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => false, :master => false, :name => 'Jane'

Product.destroy_all
p1 = Product.create :name => "Peroni", :image => 'http://www.pizznlove-valdisere.com/wp-content/uploads/2014/02/peroni-nastro-azzuro.png', :inventory => 97, :unit_cost_price => 2.0, :description => "this is a beer", :price_regular => 5.0
p2 = Product.create :name => "Merlot", :image => 'https://www.wineselectors.com.au/images/sites/1/products/6B7DEAD9-877F-4B7E-8AAC-79737FABAD84/TAYLO30314-bottle.png' , :inventory => 48, :unit_cost_price => 5.0, :description => "this is a wine", :price_regular => 15.0
p3 = Product.create :name => "Coke", :image => 'http://pngimg.com/upload/cocacola_PNG21.png', :inventory => 194, :unit_cost_price => 1.0, :description => "this is a soft drink", :price_regular => 2.0, :tax_applies => false
p4 = Product.create :name => "Corona", :image => 'http://rapilicor.com/wp-content/uploads/2015/08/Corona.png', :inventory => 20, :unit_cost_price => 2.5, :description => "this is a beer", :price_regular => 6.0, :tax_applies => true
p5 = Product.create :name => "Pinot Noir", :image => 'http://www.luliwines.com/images/luli-pinot-noir-2012.png', :inventory => 10, :unit_cost_price => 5.5, :description => "this is a wine", :price_regular => 18.0, :tax_applies => true
p6 = Product.create :name => "Sprite", :image => 'http://pngimg.com/upload/sprite_PNG8918.png', :inventory => 1, :unit_cost_price => 1.5, :description => "this is a soft drink", :price_regular => 3.0, :tax_applies => false


LineItem.destroy_all
l1 = LineItem.create :quantity => 3, :unit_price => 5.0, :unit_tax => 0.45, :unit_cost => 2.0
l2 = LineItem.create :quantity => 2, :unit_price => 15.0, :unit_tax => 1.36, :unit_cost => 5.0
l3 = LineItem.create :quantity => 6, :unit_price => 2.0, :unit_tax => 0, :unit_cost => 1.0

p1.line_items << l1
p2.line_items << l2
p3.line_items << l3

Order.destroy_all
o1 = Order.create :invoice_number => 'INV001', :total_revenue => 45.0, :total_tax =>4.07, :total_cost => 16.0, :purchase_date => DateTime.now
o2 = Order.create :invoice_number => 'INV002', :total_revenue => 12.0, :total_tax =>1.08, :total_cost => 6.0, :purchase_date => DateTime.now

o1.line_items << l1 << l2
o2.line_items << l3

u3.orders << o1 << o2

b.users << u1 << u2 << u3
b.products << p1 << p2 << p3
