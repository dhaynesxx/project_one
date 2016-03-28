# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  unit_cost  :float
#  unit_tax   :float
#  order_id   :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#  unit_price :float
#

class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :user
end
