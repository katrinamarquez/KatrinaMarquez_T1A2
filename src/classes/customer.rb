# Customer enters contact details after updating
class Customer
  attr_accessor :name, :address, :telephone

  def initialize (name, address, telephone)
    @name = name
    @address = address
    @telephone = telephone
  end 
end