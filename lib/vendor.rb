class Vendor 
  attr_reader :name, :inventory
  
  def initialize(name)
   @name = name 
   @inventory = Hash.new(0)
  end
  
  def check_stock(fruit)
    @inventory[fruit]
  end 
  
  def stock(fruit, quantity)
    @inventory[fruit] += quantity 
  end
  
  # def add_to_inventory(stock)
  #   stock.each do |fruit, quantity|
  #     @stock[fruit] += quantity 
  #   end
  # end
  
  
  
end