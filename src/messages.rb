require "colorize"
# Make interface look better in terminal. 
LINE = "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
DIVIDER = " --- "
SPACE = ""

def welcome
  puts LINE
  puts "SupplierMate"
end

# Needs to differentiate between supplier and consumer to figure out which menu options.
def user_type   
  puts "Are you a Supplier or Customer?".colorize(:blue)
  puts SPACE
  puts "Enter relevant letter:".colorize(:blue)
  puts "s: Supplier".colorize(:blue)
  puts "c: Customer".colorize(:blue)
  puts LINE
end 

# User has selected supplier.
def supplier_menu   
  # Option for supplier does not change like Consumer menu options. Keep supplier_menu as message for simplicity.               
  puts LINE
  puts "Enter relevant number:".colorize(:blue)
  puts "
  1:  View items for sale
  2:  Add new item for sale
  3:  Update your contact details".colorize(:blue)   
  puts LINE
end   
