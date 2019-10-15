class Restaurant
  attr_reader :name
  @@all =[]
  def initialize(name)
    @name = name
    @@all << self
  end
  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end
  def customers
    reviews.map do |review|
      review.customer 
    end
  end
  def average_star_rating
    total=0.00
    reviews.each do |review|
      total+=review.rating
    end
    total/reviews.count
  end
  def longest_review
    longest=reviews.max{|r1,r2| r1.content.length <=> r2.content.length}
    longest.content
  end
  def self.find_by_name(name)
    all.find do |rest|
      rest.name == name
    end
  end
  def self.all
    @@all
  end
end
