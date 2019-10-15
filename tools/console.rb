require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Bailey", "Wood")
c2 = Customer.new("Emily", "Olander")
c3 = Customer.new("Bailey", "Woods")
c4 = Customer.new("Guy", "Fieri")

r1 = Restaurant.new("Pizza Palace")
r2 = Restaurant.new("Angelo's")
r3 = Restaurant.new("Pizza Palace") #test r.find_by_name

v1 = Review.new(c1, r1, 4, "solid")
#Bailey visits Pizza Palace
v2 = Review.new(c1, r2, 5, "wow!")
#Bailey visits Angelo's
v3 = Review.new(c4, r2, 5, "f that's delicious")
#Guy visits Angelo's
v4 = Review.new(c1, r1, 5, "much better!")
#Bailey visits Pizza Palace again
v5 = Review.new(c2, r1, 1, "I'm lactose intolerant")
#Emily visits Pizza Palace
v6 = Review.new(c3, r2, 4, "I'm writing a longer review than Guy")
#Woods visits Angelo's

binding.pry
0 #leave this here to ensure binding.pry isn't the last line