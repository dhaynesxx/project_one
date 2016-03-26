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
#  tax_applies     :boolean          default("true")
#  price_sale      :float
#  on_sale         :boolean          default("false")
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :text
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
