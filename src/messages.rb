# Make interface look better in terminal. 
LINE = "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "
SPACE = ""

def welcome
  puts LINE
  puts "SupplierMate"
end

def user_type   # Needs to differentiate between supplier and consumer to figure out which menu options.
  puts "Are you a Supplier or Customer?"
  puts SPACE
  puts "Enter relevant letter:"
  puts "s: Supplier"
  puts "c: Customer"
  puts LINE
end 

def supplier_menu   # User has selected supplier.
  # Option for supplier does not change like Consumer menu options. Keep supplier_menu as message for simplicity.               
  puts LINE
  puts "Enter relevant number:"
  puts "
  1:  View items for sale
  2:  Add new item for sale
  3:  Update your contact details"    # This would then call upon the supplier class. 
  puts LINE
end   
