require "colorize"
# Importing methods from welcome.rb
require_relative 'messages.rb'  
# Importing customer class from customber.rb
require_relative 'classes/customer.rb'

# Hash containing product name and price.
PRODUCTS ={
  "clay bricks" => 10, 
  "cement" => 10,
  "pine timber" => 10,
  "plasterboard" => 10,
  "foil insulation" => 10
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
    puts LINE
    puts "What would you like to order?".colorize(:blue)
    puts "(Enter in lower case only)".colorize(:blue)
    order = gets.chomp.to_s
    puts DIVIDER
    puts "How much would you like to order?".colorize(:blue)
    quantity = gets.chomp.to_i

    # Loop through hash. If product matches add to order_list array. 
    if PRODUCTS.key?(order)
      order_list.append([order, quantity])
    else
      # If user enters an order that isn't in PRODUCTS hash. 
      puts "Invalid product entered. Please start order again".colorize(:red)
      break
    end

    # Keep looping to add more items to the product. 
    puts LINE
    puts "Would you like to order anything else?".colorize(:blue)
    puts "y: Yes".colorize(:blue)
    puts "n: No".colorize(:blue)
    puts DIVIDER
    # User selects y or n. 
    user_response = gets.chomp
    puts LINE

    # Display summary of results 
    if user_response == "n"

      # Display order_list in a user friendly view.
      order_list.each do |order, quantity|
        puts ""
        puts "Item: #{order} - Units: #{quantity}".colorize(:light_blue)
      end
      # Blank array to store total values for each item ordered. 
      cost_of_order = []
      # Look through order_list hash, calculate total value for each key and add together.    
      order_list.each do |order, quantity|
        case 
        when order == "clay bricks" 
          cost_of_order << 10 * quantity
        when order == "cement"
          cost_of_order << 10 * quantity
        when order == "pine timber"
          cost_of_order << 10 * quantity
        when order == "plasterboard"
          cost_of_order << 10 * quantity
        when order == "foil insulation"
          cost_of_order << 10 * quantity  
        else 
          puts "Error occurred in calculating total invoice. Please start order again.".colorize(:red)
          puts DIVIDER
        end 
      end
      # Calculate the total value of the order. 
      puts DIVIDER
      puts "Invoice Total:    $ #{cost_of_order.sum}".colorize(:light_blue)
      puts LINE

      # Get customer details and create customer class. 
      puts "We need to collect your details".colorize(:blue)
      puts "Enter Name:"
      customer_name = gets.chomp.to_s
      puts "Shipping Address:"
      address = gets.chomp.to_s
      puts "Telephone:"
      phone = gets.chomp.to_s

      customer_details = Customer.new(customer_name, address, phone)
      puts closing
      response = false
    else
      next
    end
  end
end