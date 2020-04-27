require "colorize"
require "tty-prompt"
# Importing methods from welcome.rb
require_relative 'messages.rb'  
# Importing methods from product_menu.rb
require_relative 'product.rb'
# Importing product class from product.rb
require_relative 'classes/supply.rb' 
# Importing customer class from customber.rb
require_relative 'classes/customer.rb'
# Importing customer class from supplier.rb
require_relative 'classes/supplier.rb'

puts welcome
# Command line argument welcoming user. ruby main.rb [name]. 
if ARGV.first
  name = ARGV.first
  puts "Welcome #{name}"
end
# Local variable acting as condition for while loop of app. 
app_on = true   

# Loop will run while start_app is true. Loop will end when app is set to false.
while app_on
  # Use TTY-Prompt for user to select if they are a customer or supplier.      
  prompt = TTY::Prompt.new
  response = prompt.select "Are you a Customer or Supplier?", %w[Supplier Customer]    

  # User selects supplier.  
  if response == "Supplier"
    puts supplier_menu
    # Supplier selects which menu option.
    supplier_input = STDIN.gets.chomp.to_i

    # Option selected: Supplier > View items for sale
    if supplier_input == 1    
      puts LINE
      # Displaying items for sale from product_menu.rb               
      product_list
      puts rerouting  
    
    # Option selected: Supplier > Add new item for sale
    elsif supplier_input == 2
      puts LINE
      puts "Product name: ".colorize(:blue)
      new_product = STDIN.gets.chomp.to_s
      puts "Price: ".colorize(:blue)
      new_price = STDIN.gets.chomp.to_i

      # Using class product to add new items for sale
      new_item = Supply.new(new_product, new_price)

      # Adding new object created to hash of items in product_menu.rb 
      PRODUCTS[new_item.item] = new_item.price   

      # Show supplier new list of items with new product 
      product_list 
      puts LINE
      puts "Thanks! Your new item will show to customers in 1 working day".colorize(:light_blue) 
      app_on = false
    
    # Update supplier contact details
    elsif supplier_input == 3
      puts "Follow the prompts to update business details".colorize(:blue)
      puts "Business name:".colorize(:blue)
      name = STDIN.gets.chomp.to_s
      puts "Business address:".colorize(:blue)
      business_address = STDIN.gets.chomp.to_s
      puts "Business telephone:".colorize(:blue)
      phone = STDIN.gets.chomp.to_s
      
      # Creating new supplier class when option is selected. 
      new_details = Supplier.new(name, business_address, phone)
      puts LINE
      puts "Details updated".colorize(:light_blue) 
      puts closing
      app_on = false

    # Selected to exit. 
    elsif supplier_input == 4
      puts closing 
      app_on = false 

    end
  
  # Use selects customer.
  elsif response =="Customer"
    puts LINE
    # Function which runs customer through order. 
    order_product
    app_on = false

  else
    # Message if user does not enter s or c when asked if they are a supplier or customer?
    puts "Please enter valid command".colorize(:red)
    app_on = false
  end
end
