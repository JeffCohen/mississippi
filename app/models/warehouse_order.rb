class WarehouseOrder

  attr_accessor :shopping_cart
  attr_accessor :shipments

  def initialize(cart)
    @shopping_cart = cart
  end

  def generate_shipments
    @shipments = []
    # Naive implementation: one box per item
    @shopping_cart.products.each do |product|
      box = Box.new
      box.size = "Large"
      box.products = [product]
      box.tracking_number = generate_tracking_number
      @shipments.push(box)
    end
  end

  def generate_tracking_number
    return "1Z#{rand(10000000..99999999)}"
  end

end
