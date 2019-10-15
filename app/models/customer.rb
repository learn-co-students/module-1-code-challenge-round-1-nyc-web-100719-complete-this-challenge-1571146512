class Customer
  attr_reader :first_name, :last_name
  @@all = [ ]

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
    #given a **restaurant object**, some review content (as a string), and a star rating (as an integer), 
    #creates a new review and associates it with that customer and restaurant.
      #Create a new review where self is customer, then res OBJECT, content and rating
    Review.new(self, res4, content, rating)
  end


  def num_reviews
  #returns the total number of reviews THIS customer has authored
      #select all review THIS customer wrote, count that array
      my_reviews = Review.all.select do |review|
          review.customer == self
      end
      my_reviews.count
  end 


  def restaurants
  #Returns a **unique** array of all restaurants a customer has reviewed
      #select all the reviews from THIS customer, map over reviews from THIS customer to get the restaurants 
      my_reviews = Review.all.select do |review|
        review.customer == self
      end
      restaurants_reviewed= my_reviews.map do |review|
              review.restaurant
      end
  end


  def self.find_by_name(name)
    # given a string of a **full name**, returns the **first customer** whose full name matches
      #Combine first & last name to get full name, compare first & last name with input
      #wants to return FIRST customer who matches so use FIND
    self.all.find do |name|
      self.name == name
    end
  end

  def self.find_all_by_first_name(first_name)
  #given a string of a first name, returns an **array** containing all customers with that first name
    self.all.find do |first_name|
      self.first_name == first_name
    end
  end

  def self.all_names
  #should return an **array** of all of the customer full names
    #Use the method previously made (Find by name), which got the full names

  end

end
