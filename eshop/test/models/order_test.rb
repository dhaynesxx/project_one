# == Schema Information
#
# Table name: orders
#
#  id              :integer          not null, primary key
#  invoice_number  :text
#  total_cost      :float
#  total_tax       :float
#  discount_amount :float
#  user_id         :integer
#  order_status_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
