require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Michelle", "Wong")
c2 = Customer.new("Michelle 2", "Wong 2")
c3 = Customer.new("Michelle 3", "Wong 3")
c4 = Customer.new("Michelle 4", "Wong 4")

res1 = Restaurant.new("THE first Restaurant")
res2 = Restaurant.new("THE second Restaurant")
res3 = Restaurant.new("THE third Restaurant")
res4 = Restaurant.new("THE fourth Restaurant")

review1 = Review.new(c1, res1, "This sucks", 2)
review2 = Review.new(c2, res1, "So great!!!!!!", 5)
review3 = Review.new(c3, res3, "Ew", 1)
review4 = Review.new(c4, res1, "OMG", 5)
review5 = Review.new(c1, res2, "Yummm", 4)
review6 = Review.new(c1, res4, "Eh", 3)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line