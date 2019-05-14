require 'test_helper'

class WarehouseTest < ActiveSupport::TestCase

  def test_one_shipment_per_item
    cart = ShoppingCart.new
    cart.add('B01DFKC2SO')
    cart.add('B01JP436TS')

    warehouse = WarehouseOrder.new(cart)
    warehouse.generate_shipments

    assert_equal 2, warehouse.shipments.length

  end

  def test_tracking_number_applied_to_box
    cart = ShoppingCart.new
    cart.add('B01DFKC2SO')
    warehouse = WarehouseOrder.new(cart)
    warehouse.expects(:generate_tracking_number).returns("1Z123456789")

    warehouse.generate_shipments
  end

end
