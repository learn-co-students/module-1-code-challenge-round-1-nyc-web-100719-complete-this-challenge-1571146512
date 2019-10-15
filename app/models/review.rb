class Review
    @@all = []

    attr_reader :customer, :restaurant, :rating, :content

    #Initialized with a customer object reference, restaurant object reference, rating, and content
    def initialize(customer, restaurant, rating, content)
        @customer = customer
        @restaurant = restaurant
        @rating = rating
        @content = content

        #adds the instance of itself to an array of all reviews
        @@all << self
    end

    ## CLASS METHODS

    def self.all 
        return @@all 
    end
end

