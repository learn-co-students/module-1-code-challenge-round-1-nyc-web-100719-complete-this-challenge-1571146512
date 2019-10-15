require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

rest1= Restaurant.new("Chick-fil-a")
rest2= Restaurant.new("Five Guys")
rest3= Restaurant.new("Chipotle")

cust1= Customer.new("Peter","Werner")
cust2= Customer.new("Gordon","Ramsey")
cust3= Customer.new("Famous","Chef")

rev1= Review.new(cust1,rest1,5,"That's some dope chicken.")
rev2= Review.new(cust1,rest2,4,"I can taste the Idaho in those fries.")
rev3= Review.new(cust1,rest3,4,"Fuego.")
rev4= Review.new(cust2,rest1,5,"Peter was spot on about the chicken, I really respect him.")
rev5= Review.new(cust2,rest2,5,"Great fries, another good call by Peter.")
rev6= Review.new(cust3,rest3,5,"Peter wasn't lying - truly fuego.")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line