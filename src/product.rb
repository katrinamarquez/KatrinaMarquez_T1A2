require "colorize"

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
  PRODUCTS.each { |product, price| puts "#{product} - $ #{price}"}
end

def order_product

  response = true
  order_list = []

  while response
    product_list
    puts "What would you like to order?".colorize(:blue)
    order = gets.chomp.to_s
    puts "How much would you like to order?".colorize(:blue)
    quantity = gets.chomp.to_i

    # Loop through hash. If product matches add to order_list array. 
    if PRODUCTS.key?(order)
      order_list.append([order, quantity])
    else
      # If user enters an order that isn't in PRODUCTS hash. 
      puts "Please put in a valid product".colorize(:blue)
    end

    # Keep looping to add more items to the product. 
    puts "Would you like to order anything else?".colorize(:blue)
    puts "y: Yes".colorize(:blue)
    puts "n: No".colorize(:blue)
    # User selects y or n. 
    user_response = gets.chomp

    # Display summary of results 
    if user_response == "n"      
      puts "Items Ordered and Quantity:"
      puts order_list
      response = false
    else
      next
    end
  end
end


      # sum = 0
      # puts "SupplierMate Invoice"
      # puts "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
      # order_list.each do |order, quantity|
      #   puts "- - -"
      #   calculation = quantity * PRODUCTS[order]
      #   puts "#{order}: #{quantity} * #{PRODUCTS[order]}"
      #   sum += calculation
      # end
      # response = false
      # puts "$#{sum}"

# Receipt is an array of arrays, with each internal array consituting a the producc
# the quantity ordered
# def invoice(receipt)
#   sum = 0
#   receipt.each do |line|
#     sum += PRODUCTS[line[0]] * line[1]
#   end
#   sum
# end

#   PRODUCTS.each do |product, price| 
#     if order.select.eql? product
#       order.append([product, quantity, price])
#       puts "Order: #{product} - #{quantity.select} units"
#     else
#       next
#     end
#   end

#   order_list
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
