class Restaurant
  @@all = []
  
  attr_reader :name

  #Initialized with a full name
  def initialize(name)
    @name = name
    @@all << self
    #adds the instance of itself to an array of all restaurants
  end

  ## CLASS METHODS

  def self.all 
    return @@all
  end

  def self.find_by_name(name)
    Restaurant.all.find do |restaurant|
      restaurant.name == name
    end
  end

  ## INSTANCE METHODS

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers 
    matching_reviews = self.reviews

    matching_customers = matching_reviews.map do |review|
      review.customer 
    end

    return matching_customers.uniq
  end

  def average_star_rating
    all_ratings = self.reviews.map do |review|
      review.rating
    end

    total = all_ratings.reduce(:+)

    return (total.to_f / all_ratings.count.to_f)
  end

  def longest_review
    self.reviews.max{ |review1, review2| review1.content.length <=> review2.content.length }
  end
end
