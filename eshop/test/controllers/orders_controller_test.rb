# == Schema Information
#
# Table name: orders
#
#  id               :integer          not null, primary key
#  invoice_number   :text
#  total_cost       :float
#  total_tax        :float
#  discount_amount  :float
#  user_id          :integer
#  order_status_id  :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  order_status     :text
#  purchase_date    :date
#  payment_date     :date
#  shipped_date     :date
#  finalised_date   :date
#  total_revenue    :float
#  delivery_address :text
#  shipping_id      :string
#

require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

end
