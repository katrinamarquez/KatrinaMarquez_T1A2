require "colorize"
require "tty-prompt"
# Make interface look better in terminal. 
LINE = "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
DIVIDER = " - - -"
SPACE = ""

def welcome
  puts LINE
  puts "SupplierMate".colorize(:blue) 
end

# User has selected supplier.
def supplier_menu   
  # Option for supplier does not change like Consumer menu options. Keep supplier_menu as message for simplicity.               
  puts LINE
  puts "Enter relevant number:".colorize(:blue)
  puts "
  1:  View items for sale
  2:  Add new item for sale
  3:  Update your contact details
  4:  Exit".colorize(:blue)   
  puts LINE
end   

# Message shows when they input an order. 
def closing
  puts LINE
  puts "Thanks for visiting!".colorize(:blue)
end 

# When loop takes them back to the begining of the while loop. 
def rerouting
  puts LINE
  puts "Rerouting you back to the main menu for all options".colorize(:light_blue)  
  puts LINE
end     

