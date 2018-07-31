class Market 
  attr_reader :name, :vendors
  
  def initialize(name)
    @name = name 
    @vendors = []
  end
  
  def add_vendor(vendor)
    @vendors << vendor 
  end 
  
  def vendor_names
    @vendors.map do |vendor|
      vendor.name 
    end 
  end
  
  def vendors_that_sell(fruit)
    @vendors.find_all do |vendor|
      vendor.inventory.include?(fruit)
    end 
  end
    
  def sorted_item_list
    @vendors.map do |vendor|
      vendor.inventory.keys
    end.flatten.sort.uniq  
  end
  
  def total_inventory
    inventories = @vendors.map do |vendor|
      vendor.inventory 
    end 
    inventories.inject({}) do |quantities, inventory|
      inventory
    end
  end
    
    
  
  
  
  
  
  
end