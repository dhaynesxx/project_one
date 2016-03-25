# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  invoice_number  :text
#  total_cost      :decimal(, )
#  total_tax       :decimal(, )
#  discount_amount :decimal(, )
#  user_id         :integer
#  order_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Order < ActiveRecord::Base
  has_many :line_items
  belongs_to :user
end
