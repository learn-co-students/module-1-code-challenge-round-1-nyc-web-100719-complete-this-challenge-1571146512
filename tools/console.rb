require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#restaurant
res1=Restaurant.new("ABC")
res2=Restaurant.new("McDonalds")
res3=Restaurant.new("Vezzos")

#customer
c1=Customer.new("Laina", "Karosic")
c2=Customer.new("Lacy", "Robinson")
c3=Customer.new("Lila", "Chase")
c4=Customer.new("Laura", "Arblaster")

#review
rev1=Review.new(res1, "good gourmet food", 5, c1)
rev2=Review.new(res2, "suprisingly good coffee", 2, c2)
rev3=Review.new(res3, "great pizza", 4, c3)
rev4=Review.new(res1, "too expensive", 3, c4)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line