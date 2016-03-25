# == Schema Information
#
# Table name: products
#
#  id              :integer          not null, primary key
#  name            :text
#  inventory       :integer
#  unit_cost_price :decimal(, )
#  description     :text
#  price_regular   :decimal(, )
#  tax_applies     :boolean          default("true")
#  price_sale      :decimal(, )
#  on_sale         :boolean          default("false")
#  business_id     :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Product < ActiveRecord::Base
  belongs_to :business
  has_many :line_items
end
