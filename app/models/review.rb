class Review
    attr_reader :restaurant, :customer, :content, :rating
    @@all = []

    def self.all
        @@all
    end

    def initialize(restaurant, customer, content, rating)
        @restaurant = restaurant
        @customer = customer
        @content = content
        
        if rating > 5
            @rating = 5
        elsif rating < 1
            @rating = 1
        else
            @rating = rating
        end

        self.class.all << self
    end

  
end

