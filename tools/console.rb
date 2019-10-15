require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#make some customers
nick = Customer.new("Nick", "Moy")
vivi = Customer.new("Vivi", "Hu")
frank = Customer.new("Frank", "Ntilikina")

#make some restuarants
wokwok = Restaurant.new("Wok wok")
wng = Restaurant.new("Wonton Noodle Garden")
ms = Restaurant.new("I'M star Cafe")

#make some reviews -> pass in customer, restuarant, rating, content, in that order
r1 = Review.new(nick, wokwok, 5, "Great southeast asian restuarant in Chinatown!")
r2 = Review.new(vivi, wng, 3, "Solid noodle joint in Chinatown, but not as good as hong kong")
r3 = Review.new(nick, wng, 4, "I share the same sentiments with vivi, but she's too harsh. Not that bad!!")

#nick makes a return, making his total number of reviews 3
r4 = Review.new(nick, wng, 5, "I decided to come back and they improved their recipe!! I'll have to tell vivi")
r5 = Review.new(vivi, ms, 4, "I frequent here often to get breakfast. Super cheap and reminds me of HK!!")

binding.pry
"Food. Glorious food." #leave this here to ensure binding.pry isn't the last line