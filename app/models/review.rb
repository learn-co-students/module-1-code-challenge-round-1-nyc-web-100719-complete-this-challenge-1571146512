class Review

    attr_reader :customer, :restaurant, :rating, :content

    @@all = []

    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content
        @@all << self
    end

    def self.all
        @@all
    end

    #if new review instance created outside rating range (1 through 5), can put into this instance method to remove from Review.all array
    def limit_rating
        if self.rating < 1
            @@all.delete(self)
        elsif self.rating > 5
            @@all.delete(self)
        end
    end
  
end

