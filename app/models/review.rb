class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []

  def initialize(customer, restaurant, content, rating = 0)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    
    @@all << self
  end

  def self.all
    @@all
  end

end #end of Review class

