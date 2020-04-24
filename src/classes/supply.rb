# Supply = the acutal building product (e.g. brick, timber). Renamed from product due to naming issue. 
class Supply
  attr_accessor :item, :price

  # Supplier will be required to enter information below when adding new item.
  def initialize(item, price)
    @item = item
    @price = price 
  end 
end