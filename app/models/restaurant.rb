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
    Review.all.select {|review| review.restaurant == self}
  end

  def customers
    reviews.map {|review| review.customer }
  end

  def self.find_by_name(name)
    self.all.find {|restaurant| restaurant.name == name}
  end

  def average_star_rating
  reviews.map {|review| review.rating}.reduce{|sum, num| sum += num}/reviews
  end

  def longest_review
    reviews.max_by {|review|review.content.split.size}

  end



end
