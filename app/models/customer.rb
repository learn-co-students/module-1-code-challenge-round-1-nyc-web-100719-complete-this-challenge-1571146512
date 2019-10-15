class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, rating, content)
  end

  def get_my_reviews
    #return all reviews that instance object wrote

    #get all reviews
    #select reviews where reviews customer is equal to self 
    
    all_reviews = Review.all
    all_reviews.select {|review| review.customer == self}
  end
  
  def num_reviews
    #return total number of reviews
    get_my_reviews.count
  end

  def restaurants
    #return a unique array of all restuarants a customer has reviewed

    #get my reviews
    #cycle through all reviews, collect their restaurants
    #get unique restaurant objects
    get_my_reviews.collect {|review| review.restaurant }.uniq
  end

  def self.find_by_name(name)
    all.find {|customer| customer.full_name == name}
  end

  def self.find_by_first_name(first_name)
    all.select {|customer| customer.first_name == first_name}
  end

  def self.all_names
    all.collect {|customer| customer.full_name}
  end
end
