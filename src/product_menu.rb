# Hash containing product name and price.
PRODUCTS ={
  "Clay Bricks" => 10, 
  "Cement" => 10,
  "Pine Timber" => 10,
  "Plasterboard" => 10,
  "Foil Insulation" => 10
}

def product_list
  PRODUCTS.each { |product, price| puts "#{product}: $ #{price}"}
end
