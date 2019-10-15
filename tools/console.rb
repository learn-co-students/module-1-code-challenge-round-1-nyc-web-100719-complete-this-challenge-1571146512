require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

customer1 = Customer.new("Matthew", "Borkowski")
customer2 = Customer.new("Rudy", "Giuliani")
customer3 = Customer.new("Matthew", "Braps")
restaurant1 = Restaurant.new("Peter Luger")
restaurant2 = Restaurant.new("Times Square Olive Garden")
review1 = Review.new(customer1, restaurant1, 5, "Pretty good steak.")
review2 = Review.new(customer1, restaurant1, 2, "Didn't like it this time. Nonononononononononono")
review3 = Review.new(customer2, restaurant1, 4, "Yowzers.")
review1 = Review.new(customer1, restaurant2, 5, "Unbelievable!!!!")

customer1.add_review(restaurant1, 4, "I've reconsidered.")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line