# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :text
#  inventory       :integer
#  unit_cost_price :float
#  description     :text
#  price_regular   :float
#  tax_applies     :boolean          default(TRUE)
#  price_sale      :float
#  on_sale         :boolean          default(FALSE)
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :text
#  tags            :text
#  active          :boolean          default(TRUE)
#

require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
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
