class Customer
  @@all = []
  
  attr_reader :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  ## CLASS METHODS

  def self.all 
    return @@all 
  end

  def self.all_names 
    Customer.all.map do |customer|
      "#{customer.first_name} #{customer.last_name}"
    end
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      "#{customer.first_name} #{customer.last_name}" == name
    end
  end

  def self.find_all_by_first_name(name)
    Customer.all.select do |customer|
      "#{customer.first_name}" == name
    end
  end

  ## INSTANCE METHODS
  
  def full_name
    "#{first_name} #{last_name}"
  end

  def reviews
    Review.all.select do |review|
      review.customer == self
    end
  end

  def restaurants 
    matching_reviews = self.reviews

    matching_restaurants = matching_reviews.map do |review|
      review.restaurant 
    end

    return matching_restaurants.uniq
  end

  def add_review(restaurant, content, rating)
    Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    return self.reviews.count
  end
end
