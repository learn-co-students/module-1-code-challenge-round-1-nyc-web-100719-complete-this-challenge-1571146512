class Customer
  attr_reader :first_name, :last_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self 
  end

  #created instance variables so that it can be dynamic
  def full_name
    "#{@first_name} #{@last_name}"
  end


  def self.all
  @@all
  end

  #want to call c1.add_review(<Vezzo's 004902349, "love the balsamic salad", 5)
  # want to create new instance of a review and pass in the above info, and add self(customer's name)
  def add_review(restaurant, content, rating)
    Review.new(restaurant, content, rating, self)
  end

  #want c1.num_reviews
  def num_reviews
    reviews.count
  end 

  ###************Come back to to return by FULLNAME
  #want helper method that returns all reviews of this customer 
  #c1.reviews
  def reviews
    Review.all.select do |review|
      review.full_name == self
    end 
  end 

# ** come back to 
# this returns it by first_name, if I were to call it by the first name
  #want c3.restaurants
  def restaurants
   restaurant_array = Review.all.select do |review|
    review.first_name == self 
    end
    restaurant_array.uniq 
  end 


  def self.find_by_name
  end 

  def self. 





end #end customer class
