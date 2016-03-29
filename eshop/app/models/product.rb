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
#

class Product < ActiveRecord::Base
  belongs_to :business
  has_many :line_items

def self.search(search)
  where("name ILIKE ? or description ILIKE ?", "%#{search}%", "%#{search}%")
end

end
