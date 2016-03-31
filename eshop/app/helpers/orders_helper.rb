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

module OrdersHelper

  def order_status (id)
      order = Order.find id
      if order.finalised_date.present?
            order.order_status = "Order finalised"
      elsif order.shipped_date.present?
            order.order_status = "awaiting confirmation"
      elsif order.payment_date.present?
            order.order_status = "Awaiting shipment"
      else
            order.order_status = "Awaiting payment"
      end
      order.save
  end

end
