# == Schema Information
#
# Table name: businesses
#
#  id           :integer          not null, primary key
#  company_name :text
#  trading_name :text
#  abn          :text
#  logo         :text
#  email        :text
#  phone        :text
#  tax_rate     :decimal(, )
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Business < ActiveRecord::Base
  has_many :users
  has_many :products
end
