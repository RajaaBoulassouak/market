require './lib/vendor'
require 'minitest/autorun'
require 'minitest/pride'

class VendorTest < Minitest::Test
  
  def test_it_exists
    vendor = Vendor.new("Rocky Mountain Fresh")
    
    assert_instance_of Vendor, vendor 
  end 
  
  def test_vendor_has_name_and_inventory_starts_empty 
    vendor = Vendor.new("Rocky Mountain Fresh")
  
    assert_equal "Rocky Mountain Fresh", vendor.name
    assert_equal ({}), vendor.inventory
  end
  
  def test_fruit_stock_starts_at_zero 
    vendor = Vendor.new("Rocky Mountain Fresh")
    
    assert_equal 0, vendor.check_stock("Peaches")
  end
  
  def test_it_stocks_up_fruits
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock("Peaches", 30)
    vendor.stock("Peaches", 25)
    
    assert_equal 55, vendor.check_stock("Peaches") 
  end
  
  def test_inventory_stocks_fruits
    vendor = Vendor.new("Rocky Mountain Fresh")
    vendor.stock("Peaches", 30)
    vendor.stock("Peaches", 25)
    vendor.stock("Tomatoes", 12)
    
    assert_equal ({"Peaches"=>55, "Tomatoes"=>12}), vendor.inventory 
  end
  
  
end