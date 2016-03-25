# == Schema Information
#
# Table name: order_statuses
#
#  id         :integer          not null, primary key
#  basket     :date
#  purchase   :date
#  payment    :date
#  shipped    :date
#  finalised  :date
#  order_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class OrderStatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
