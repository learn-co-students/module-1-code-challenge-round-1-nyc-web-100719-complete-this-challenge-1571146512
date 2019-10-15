require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Bob", "Dole")
c2 = Customer.new("Tommy", "Pickles")
c3 = Customer.new("Tina", "Turner")
c4 = Customer.new("Bob", "Le'Builder")
c5 = Customer.new("Kanye", "Kardashian")

r1 = Restaurant.new("Cafe Colette")
r2 = Restaurant.new("Zizi Limona")
r3 = Restaurant.new("Le Pain Quotidien")
r4 = Restaurant.new("Avena")
r5 = Restaurant.new("Some Steven Starr Restaurant")
r6 = Restaurant.new("Michael Jackson's Neverland Cuisine")

v01 = Review.new(c1, r1, "It was so good. I died for a second and then they brought me back.", 5)
v02 = Review.new(c2, r2, "Hummus all the way", 3)
v03 = Review.new(c3, r4, "Ths doesn't have anything to do with food, but What's love got to with it anyway??", 2)
v04 = Review.new(c4, r5, "Can there be better pasta?!", 5)
v05 = Review.new(c5, r3, "Best chimi changas since 'Nam!", 1)
v06 = Review.new(c1, r6, "I come for the Jesus juice happy hours", 5)
v07 = Review.new(c2, r4, "There's always money in the banana stand", 2)
v08 = Review.new(c1, r1, "I'm Bob Dole", 3)
v09 = Review.new(c1, r2, "No you cant have that!", 3)
v10 = Review.new(c1, r3, "I once climbed the statue of liberty and slept for three days", 3)
v11 = Review.new(c5, r1, "Peanuts and Hamburger erryday baby", 3)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line