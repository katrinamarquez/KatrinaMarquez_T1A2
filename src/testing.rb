LINE = "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - "

PRODUCTS ={
  "Clay Bricks" => 10, 
  "Cement" => 10,
  "Pine Timber" => 10,
  "Plasterboard" => 10,
  "Foil Insulation" => 10,
  "Quit" => 0 
}

# puts LINE
# puts "What would you like to order?"
# order = gets.chomp
# puts LINE
# puts "How much would you like to order?"
# quantity = gets.chomp

order = "Concrete"
quantity = 2

while 

PRODUCTS.each do |product, price|
  if order.eql? product
    puts "#{product}: #{price}"
  else
    next
  end
end

https://stackoverflow.com/questions/19717242/ruby-coding-exercise-solution-rubymonk 

