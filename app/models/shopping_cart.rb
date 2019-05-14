class ShoppingCart

  attr_accessor :products
  attr_accessor :total

  def initialize
    self.products = []
    self.total = 0.0
  end

  def add(sku)
    product = Product.find_by_ASIN(sku)
    if !product
      raise "SKU not found."
    end
    self.products.push(product)
    self.total += product['price'].to_f
  end
end
