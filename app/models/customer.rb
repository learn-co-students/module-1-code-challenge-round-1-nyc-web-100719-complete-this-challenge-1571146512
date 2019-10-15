class Customer
  attr_reader :first_name, :last_name
  @@all = []

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    name = full_name.split(" ")
    all.find do |customer|
      customer.first_name == name.first && customer.last_name == name.last
    end
  end

  def self.find_all_by_first_name(name)
    all.select do |customer|
      customer.first_name == name
    end
  end

  def self.all_names
    all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name

    self.class.all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, content, rating)
    Review.new(restaurant, self, content, rating)
  end

  def customer_reviews
    customer_reviews = Review.all.select do |review|
      review.customer == self
    end
  end

  def num_reviews
    customer_reviews.count
  end

  def restaurants
    restaurants = customer_reviews.map { |review| review.restaurant }
    restaurants.uniq!
    restaurants
  end

end
