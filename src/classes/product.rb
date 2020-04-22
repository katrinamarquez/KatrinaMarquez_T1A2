class Product
  attr_writer :item, :price

  # Supplier will be required to enter information below when adding new item.
  def initialize(item, price)
    @item = item
    @price = price 
  end 
end