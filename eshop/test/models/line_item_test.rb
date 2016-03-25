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

require 'test_helper'

class LineItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
