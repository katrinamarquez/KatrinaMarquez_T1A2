#FIX COMMENTS
require_relative 'messages.rb'          # Importing methods from welcome.rb
require_relative 'product_menu.rb'      # Importing methods from product_menu.rb

puts welcome
app_on = true   # Local variable acting as condition for while loop of app. 

while app_on    # Loop will run while start_app is true. Loop will end when app is set to false. 
  puts user_type    # Welcome message asking for type of user from welcome_menus.rb. 
  user_input = gets.chomp.to_s.downcase   # User indicates if they are a supplier or customer. 

  if user_input == "s"    # User selects supplier. 
    puts supplier_menu
    supplier_input = gets.chomp.to_i    # Supplier selects which menu option.

    # Option selected: Supplier > View items for sale
    if supplier_input == 1    
      puts LINE               
      product_list           # Displaying items for sale from product_menu.rb
      app_on = false
    
    # Option selected: Supplier > Add new item for sale
    elsif supplier_input == 2
      puts LINE
      puts "Product name: "
      new_product = gets.chomp.to_s
      puts "Price: "
      new_price = gets.chomp.to_s

    else
      puts = "Unable to recognise option selected"    # Message if user does not enter 1, 2 or 3 from supplier menu. 
      break
    end

  elsif user_input == "c"    # Use selects customer. 
    puts LINE                # Line from messages.rb put in to make it easier to read. 
    product_list
    app_on = false

  else
    puts "Unable to find this user type"    # Message if user ddoes not enter s or c when asked if they are a supplier or customer?
    break
  end
end


