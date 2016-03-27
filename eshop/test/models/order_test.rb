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
#  order_status    :text
#  purchase_date   :date
#  payment_date    :date
#  shipped_date    :date
#  finalised_date  :date
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
