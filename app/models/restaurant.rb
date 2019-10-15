class Restaurant
  attr_reader :name
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(name)
    all.find do |restaurant|
      restaurant.name == name
    end
  end

  def initialize(name)
    @name = name

    self.class.all << self
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
    ratings = reviews.map do |review|
      review.rating
    end
    ratings.sum.to_f / ratings.count.to_f
  end

  def longest_review
    c_arr = reviews.map { |review| review.content }
    reviews[c_arr.index(c_arr.max_by { |review| review.length })]
  end

end
