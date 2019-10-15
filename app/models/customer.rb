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
    Review.new(self, restaurant, content, rating)
  end

  def reviews
    Review.all.select {|review| review.customer == self}
  end

  def restaurants
    reviews.map {|review| review.restaurant}.uniq
  end

  def num_reviews
    reviews.length
  end

  def self.find_by_name(full_name)
    self.all.find {|customer| customer.full_name == full_name}
  end

  def self.find_by_first_name(first_name)
    self.all.find {|customer| customer.first_name == first_name}
  end

  def self.all_names
    self.all.map {|customer| customer.full_name }
  end

 

end
