Business.destroy_all
b = Business.create :company_name => 'Test Pty Ltd', :trading_name => "The Shop", :tax_rate => "10%", :email => 'contactus@theshop.com.au', :phone => '+61 2 9808 1234', :logo => 'logo.png'

User.destroy_all
u1 = User.create :email => 'master@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => true, :name => 'Dave'
u2 = User.create :email => 'admin@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => true, :master => false, :name => 'Bill'
u3 = User.create :email => 'user1@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => false, :master => false, :name => 'Bob'
u4 = User.create :email => 'user2@ga.co', :password => 'chicken', :password_confirmation => 'chicken', :admin => false, :master => false, :name => 'Jane'

Product.destroy_all


LineItem.destroy_all


Order.destroy_all


b.users << u1 << u2 << u3 << u4
