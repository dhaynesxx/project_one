# == Schema Information
#
# Table name: line_items
#
#  id         :integer          not null, primary key
#  quantity   :integer
#  unit_cost  :decimal(, )
#  unit_tax   :decimal(, )
#  order_id   :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
end
