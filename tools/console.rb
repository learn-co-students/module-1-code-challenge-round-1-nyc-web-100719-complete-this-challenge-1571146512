require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

r1 = Restaurant.new("Applebees")
r2 = Restaurant.new("Outback Steakhouse")

c1 = Customer.new("George", "Applebee")
c2 = Customer.new("John", "Outback")
c3 = Customer.new("John", "Doe")
c4 = Customer.new("John", "Doe")

rv1 = Review.new(r1,c1, "I love this place! Especially when inebriated. Which is pretty much all the time for me.", 10)
rv2 = Review.new(r2,c2, "I come here to eat a bloomin' onion every Friday. That's all the calories I need for the week!", 5)
rv3 = Review.new(r1,c3, "I'm pretty sure they make everything here with a microwave.", 1)
rv4 = c3.add_review(r2, "I'm not sure that the steak here is even beef... but who can say no to a bloomin' onion?", 2)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line