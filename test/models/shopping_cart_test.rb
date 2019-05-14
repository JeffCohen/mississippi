require 'test_helper'

class ShoppingCartTest < ActiveSupport::TestCase

  def test_calculate_total
    cart = ShoppingCart.new

    cart.add('B01DFKC2SO')
    cart.add('B01JP436TS')

    assert_equal 49.99+108.00, cart.total
  end

end
