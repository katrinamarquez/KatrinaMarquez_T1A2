require "colorize"
# Importing methods from welcome.rb
require_relative 'messages.rb'  
# Importing methods from product_menu.rb
require_relative 'product.rb'
# Importing product class from class.rb
require_relative 'classes/supply.rb' 


puts welcome
# Local variable acting as condition for while loop of app. 
app_on = true   

# Loop will run while start_app is true. Loop will end when app is set to false.
while app_on
  # Welcome message asking for type of user from welcome_menus.rb.     
  puts user_type
  # User indicates if they are a supplier or customer.
  user_input = gets.chomp.to_s.downcase    

  # User selects supplier.  
  if user_input == "s"     
    puts supplier_menu
    # Supplier selects which menu option.
    supplier_input = gets.chomp.to_i

    # Option selected: Supplier > View items for sale
    if supplier_input == 1    
      puts LINE
      # Displaying items for sale from product_menu.rb               
      product_list           

      app_on = false
    
    # Option selected: Supplier > Add new item for sale
    elsif supplier_input == 2
      puts LINE
      puts "Product name: ".colorize(:blue)
      new_product = gets.chomp.to_s
      puts "Price: ".colorize(:blue)
      new_price = gets.chomp.to_s

      # Using class product to add new items for sale
      new_item = Supply.new(new_product, new_price)

      # Adding new object created to hash of items in product_menu.rb 
      PRODUCTS[new_item.item] = new_item.price   

      # Show supplier new list of items with new product 
      product_list 

      app_on = false

    else
      # Message if user does not enter 1, 2 or 3 from supplier menu.
      puts = "Unable to recognise option selected".colorize(:red)    
      app_on = false
    end
  
  # Use selects customer.
  elsif user_input == "c"
    puts LINE
    # Display list of products for sale.                  
    product_list
    # Question from messages.rb
    puts order
    # Response
    customer_order = gets.chomp.to_s
    # Question from messages.rb 
    puts quantity
    # Response
    amount = gets.chomp.to_i

    app_on = false
  
  else
    # Message if user does not enter s or c when asked if they are a supplier or customer?
    # puts "Unable to find this user type".colorize(:red)
    puts "Please enter valid commands".colorize(:red)
    
    app_on = false
  end
end
