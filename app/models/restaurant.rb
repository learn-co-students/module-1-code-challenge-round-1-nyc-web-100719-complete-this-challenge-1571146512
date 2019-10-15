class Restaurant
  attr_reader :name
  @@all = [ ]

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def customers
  #Returns a **unique** list of all customers who have reviewed a particular restaurant
      my_restaurant = Review.all.select do |review|
        review.restaurant == self
      end
      customers_reviewed= my_restaurant.map do |review|
          review.customer
      end
      customers_reviewed
    end
  end 

#test!!!~!!!
  def reviews 
    #returns an array of all reviews for that restaurant
        #select the reviews for THIS restaurant
        #map over the reviews for THIS restaurant to return an array of the content
    reviews_of_my_restaurant = Review.all.select do |review|
          review.restaurant == self
    end
    reviews_content= reviews_of_my_restaurant.map do |review|
      review.content
    end
  end


  def average_star_rating
    #returns the average star rating for a restaurant based on its reviews
      #Select reviews for THIS restaurant, map over the reviews to get array of Stars, 
      #get average of each nuber in array (add up total in array DIVIDED BY the array.count)
      reviews_of_my_restaurant = Review.all.select do |review|
              review.restaurant == self
      end
      ratings = reviews_of_my_restaurant.map do |review|
          review.rating
      end
      average = ratings.inject(0, :+) / ratings.count
  end


  def longest_review
    #returns the longest review content for a given restaurant
      #select reviews for THIS restaurant & map over reviews to get an array of their content 
        #aka (PREVIOUS METHOD "Reviews" which shows the content), 
      #count the length of each content & compare using max 
      self.reviews.max {|a,b| a.count <=> b.count}
  end

  def self.find_by_name(name)
    #given a string of restaurant name, returns the first restaurant that matches
    self.all.find do |name|
      self.name == name
    end
  end
