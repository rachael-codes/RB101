# Program: Products by Query
# Source: https://launchschool.com/blog/live-session-beginning-ruby-part-4
# Date: 02/05/21
# Instructions: use the criteria in query1 and query2 to return the products that meet their criteria. 

PRODUCTS = [
{ name: "Thinkpad x210", price: 220 },
{ name: "Thinkpad x220", price: 250 },
{ name: "Thinkpad x250", price: 979 },
{ name: "Thinkpad x230", price: 300 },
{ name: "Thinkpad x230", price: 330 },
{ name: "Thinkpad x230", price: 350 },
{ name: "Thinkpad x240", price: 700 },
{ name: "Macbook Leopard", price: 300 },
{ name: "Macbook Air", price: 700 },
{ name: "Macbook", price: 1499 },
{ name: "Dell Latitude", price: 200 },
{ name: "Dell Latitude", price: 650 },
{ name: "Dell Inspiron", price: 300 },
{ name: "Dell Inspiron", price: 450 }
]

query1 = { 
  price_min: 240, 
  price_max: 280, 
  q: 'thinkpad'
}

query2 = { 
  price_min: 300, 
  price_max: 450, 
  q: 'dell'
}

def search(query)
  target_brand = query[:q].capitalize
  min = query[:price_min]
  max = query[:price_max]

  result = PRODUCTS.select do |product|
    product[:name].include?(target_brand) && 
    product[:price] >= min && product[:price] <= max 
  end 
  result
end

# TEST CASES
p search(query1) # [ { name: "Thinkpad x 220", price: 250 } ]
p search(query2) # [ { name: "Dell Inspiron", price: 300 }, { name: "Dell Inspiron", price: 450 } ]