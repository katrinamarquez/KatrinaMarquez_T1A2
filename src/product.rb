# Hash containing product name and price.
PRODUCTS ={
  "Clay Bricks" => 10, 
  "Cement" => 10,
  "Pine Timber" => 10,
  "Plasterboard" => 10,
  "Foil Insulation" => 10
}

# Display items for sale in a pretty view. 
def product_list
  PRODUCTS.each { |product, price| puts "#{product}: $ #{price}"}
end

# def order_product

#   order_hash = []

#   puts "What would you like to order?"
#   order.gets.chomp.to_s
#   puts "How much would you like to order?"
#   quantity.gets.chomp.to_i

#   PRODUCTS.each do |product, price| 
#     if order.select.eql? product
#       puts "Order: #{product} - #{quantity.select} units"
#     else
#       next
#     end
#   end
# end

# def calculate_cost(order)
#   PRODUCTS.each do |product, price| 
#     # Loop through hash. If input matches print price.
#     if order.eql? product
#       puts price.to_i
#     else
#       # If it doesn't match go to next in hash. 
#       next
#     end  
#   end
# end
