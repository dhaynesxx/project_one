module OrdersHelper

  def order_status (id)
      order = Order.find id
      if order.finalised_date.present?
            order.order_status = "Order finalised"
      elsif order.shipped_date.present?
            order.order_status = "Product Shipped, awaiting confirmation"
      elsif order.payment_date.present?
            order.order_status = "Payment made, awaiting shipment"
      else
            order.order_status = "Awaiting payment"
      end
      order.save
  end

end
