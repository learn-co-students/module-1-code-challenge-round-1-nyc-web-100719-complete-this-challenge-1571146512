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
    arr1 = Review.all.select do |review|
      review.restaurant == self
    end
    arr2 = arr1.map do |review|
      review.customer
    end
    arr2.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def average_star_rating
    #get array of all review rating integers
    arr = reviews.map do |review|
      review.rating
    end
    #take sum of these array integers
    sum = arr.inject(0.0) { |sum, num| sum + num }
    #divide this sum by size of array to get average
    sum / arr.size
  end

  def longest_review
    #get array of all review content strings
    arr = reviews.map do |review|
      review.content
    end
    #take out max from this array based on length of element
    arr.max { |x, y| x.length <=> y.length}
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end


end
