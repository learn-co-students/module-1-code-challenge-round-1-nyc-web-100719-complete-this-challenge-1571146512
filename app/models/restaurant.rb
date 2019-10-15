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

  def customers
    customer_array = Review.all.select do |review|
      review.customer == self 
    end
    customer_array.uniq
  end 

  #want to call res1.reviews
  #iterate through reviews
  #select those that match the restauarnt
  def reviews
    Review.all.select do |review|
      review.name == self 
    end 
  end 


  #iterate through reviews
  #average the reviews and return using array method
  def average_star_rating
    
  end 


  

end
