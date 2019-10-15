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
    rest = Review.all.select do |review|
      review.restaurant == self
    end 
   cust = rest.map do |review|
    review.customer
   end 
   cust.uniq
  end 

  def reviews
    Review.all.select do |review|
      review.restaurant == self 
    end 
  end 

  def average_star_rating
    total = self.reviews.map do |review|
      review.rating 
    end
    total.reduce(0, :+) / total.length
  end 

  def longest_review
    rev_strs = self.reviews.map do |review|
     # binding.pry
      review.content
    end 
  rev_strs.max_by {|str| str.length}
  end 

  def self.find_by_name(name)
    @@all.



end
