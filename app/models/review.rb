class Review
   attr_reader :customer, :restaurant, :rating, :content


    @@all = [] 
    def initialize(customer, restaurant, content, rating)
        @customer = customer
        @restaurant = restaurant
        @rating = rating 
        @content = content 
        @@all << self 
    end 
  

    def self.all
        @@all
    end 
end

