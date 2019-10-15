require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Erica", "Basak")
c2 = Customer.new("Adelyn", "Basak")
c3 = Customer.new("Shaan", "Basak")

r1 = Restaurant.new("Opai Thai")
r2 = Restaurant.new("Mamas Kitchen")
r3 = Restaurant.new("Paseos")

review1 = Review.new(c1, r1, "Great", 5.0)
review2 = Review.new(c2, r2, "Tasty", 3.0)
review3 = Review.new(c3, r3, "Delicious", 4.0)
review4 = Review.new(c1, r1, "Decent", 3.0)
review5 = Review.new(c3, r3, "Okay", 2.0)


binding.pry
"Yeah for coding!"