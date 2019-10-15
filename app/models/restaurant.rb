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

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|customer| customer.restaurant}.uniq
  end

  def average_star_rating
    sum = 0
    ave_rating = reviews.map {|rate| rate.rating}
    ave_rating.each {|num| sum += num}
    sum / ave_rating.length
  end

  def longest_review
    customers.max_by {|review| review.review}
  end

end # end of Restaurant class
