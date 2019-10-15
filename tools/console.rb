require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Herbert", "Tejada")
c2 = Customer.new("Delia", "Solorzano")
c3 = Customer.new("Hulises", "Tejada")
c4 = Customer.new("Sandra", "Zamora")


r1 = Restaurant.new("Pollo Loco")
r2 = Restaurant.new("Mr. Donut")
r3 = Restaurant.new("Applebees")
r4 = Restaurant.new("Le Croissant")

rw1 = Review.new(c1, r1, "Excellent", 5)
rw2 = Review.new(c2, r2, "Good", 4)
rw3 = Review.new(c3, r3, "Average", 3)
rw4 = Review.new(c4, r4, "Bad", 2)
rw4 = Review.new(c1, r3, "Bad", 2)
rw1 = Review.new(c1, r1, "Excellent", 5)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line