class Restaurant
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all 
  end

  def reviews
    #gets all reviews that corresponds to restaurant
    all_reviews = Review.all
    all_reviews.select {|review| review.restaurant == self}
  end

  def customers
    #return a unique list of all cystomers who reviews a restaurant
    reviews.collect {|review| review.customer}.uniq
  end

  def num_reviews
    reviews.count
  end

  def average_star_rating
    #return average star rating for a restaurant based on reviews

    #collect all review ratings and pass it into new array
    #reduce it to get total and change it to a float
    #device it by number of reviews
    total = 0.0
    my_review_ratings = reviews.collect {|review| review.rating}
    total = my_review_ratings.reduce {|total, rating| total+= rating}.to_f
    total /num_reviews
  end

  def longest_review
    #returns longest review content
    reviews.max {|review1, review2| review1.content.length <=> review2.content.length }
  end

end
