Business.destroy_all
b = Business.create :company_name => 'Test Pty Ltd', :trading_name => "The Shop", :tax_rate => "10%", :email => 'contactus@theshop.com.au', :phone => '+61 2 9808 1234', :logo => 'logo.png'

User.destroy_all
u1 = User.create :email => 'master@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => true, :name => 'Dave'
u2 = User.create :email => 'admin@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => false, :name => 'Bill'
u3 = User.create :email => 'user1@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => false, :master => false, :name => 'Bob'
u4 = User.create :email => 'user2@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => false, :master => false, :name => 'Jane'

Product.destroy_all
p1 = Product.create :name => "Cadbury Bar", :description => "Its chocolate", :price_regular => 4.0, :price_sale => 3.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459407550/rxr5x6ubvvyw57dvhfys.png", :tags => "chocolate", :inventory => 20, :unit_cost_price => 0.9
p2 = Product.create :name => "Chuppa Chup Apple", :description => "Its apple flavoured", :price_regular => 2.0, :price_sale => 1.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408597/q5yd2ekm7pdua7euvrjr.png", :tags => "lollipop", :inventory => 95, :unit_cost_price => 0.5
p3 = Product.create :name => "Minties", :description => "Mmmmm Minty", :price_regular => 12.0, :price_sale => 10.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408377/popgwe55grmtusyheadj.png", :tags => "retro", :inventory => 44, :unit_cost_price => 2.5
p4 = Product.create :name => "Crunchie", :description => "It crunches", :price_regular => 3.5, :price_sale => 3.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459407729/blygbqxlhbrh3dsa2pci.png", :tags => "chocolate", :inventory => 38, :unit_cost_price => 1.0
p5 = Product.create :name => "Cadbury Twirl", :description => "May contain Nuts", :price_regular => 5.0, :price_sale => 4.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459407581/bj12nyiqhrysizctrboa.png", :tags => "chocolate", :inventory => 34, :unit_cost_price => 1.5
p6 = Product.create :name => "Freckles", :description => "Its freckly", :price_regular => 8.0, :price_sale => 7.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459407993/jm680toam6imhfkzok9t.png", :tags => "chocolate", :inventory => 20, :unit_cost_price => 4.0
p7 = Product.create :name => "Ferrero Rocher", :description => "May contain Nuts", :price_regular => 15.0, :price_sale => 12.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459407944/tcb389mqynmzcektl3ma.png", :tags => "chocolate", :inventory => 25, :unit_cost_price => 5.0
p8 = Product.create :name => "Redskins", :description => "They are red", :price_regular => 9.0, :price_sale => 8.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408414/pfo6auea2vqb1nodrxqn.png", :tags => "retro", :inventory => 3, :unit_cost_price => 3.0
p9 = Product.create :name => "Lollipop Swirl", :description => "Its colorful", :price_regular => 2.0, :price_sale => 1.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408339/ashewp67dhaxuuco5hur.png", :tags => "lollipop", :inventory => 98, :unit_cost_price => 0.4
p10 = Product.create :name => "Hubba Bubba Grape", :description => "Its grape flavoured", :price_regular => 4.0, :price_sale => 3.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408195/dbtpf0t9vgw9sgsjauyx.png", :tags => "gum", :inventory => 50, :unit_cost_price => 1.0
p11 = Product.create :name => "Fruit Tingles", :description => "Its tingly", :price_regular => 3.0, :price_sale => 2.0, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408032/w7pv3wugdbs9nu67jsgk.png", :tags => "retro", :inventory => 80, :unit_cost_price => 0.7
p12 = Product.create :name => "Juicy Fruit", :description => "Its fruity", :price_regular => 3.0, :price_sale => 2.5, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408272/v71g5j9mdzrczcj2icio.png", :tags => "gum", :inventory => 80, :unit_cost_price => 0.8
p13 = Product.create :name => "Jaffas", :description => "They are red", :price_regular => 14.0, :price_sale => 12, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408229/acvpxmsr1ouwkdhrwwvs.png", :tags => "chocolate retro", :inventory => 60, :unit_cost_price => 3.5
p14 = Product.create :name => "Hersheys Kisses", :description => "They are not real kisses", :price_regular => 11.0, :price_sale => 10, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408152/psl4jjrrdaujbmzygkhu.png", :tags => "chocolate retro", :inventory => 35, :unit_cost_price => 4.5
p15 = Product.create :name => "Wrigleys Extra", :description => "Its chewy", :price_regular => 4.0, :price_sale => 3.5, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459408440/zyr4need6jmu0a0nrzux.png", :tags => "gum", :inventory => 100, :unit_cost_price => 0.6
p16 = Product.create :name => "Chuppa Chup Cherry", :description => "Its cherry flavoured", :price_regular => 2.0, :price_sale => 1.5, :image => "http://res.cloudinary.com/dhaynesxx/image/upload/v1459407886/ets6ngcyqewum98wg5ew.png", :tags => "lollipop", :inventory => 90, :unit_cost_price => 0.5



LineItem.destroy_all


Order.destroy_all


b.users << u1 << u2 << u3 << u4
b.products << p1 << p2 << p3 << p4 << p5 << p6 << p7 << p8 << p9 << p10 << p11 << p12 << p13 << p14 << p15 << p16
