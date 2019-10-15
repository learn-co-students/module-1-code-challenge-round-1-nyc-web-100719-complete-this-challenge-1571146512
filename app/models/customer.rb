class Customer
  attr_reader :first_name, :last_name
  @@all = []
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
  def add_review(restaurant,rating,content)
    Review.new(self,restaurant,rating,content)
  end
  def my_reviews
    Review.all.select do |review|
      review.customer==self
    end
  end
  def num_reviews
    my_reviews.count
  end
  def restaurants
    my_reviews.map do |review|
      review.restaurant
    end
  end
  def full_name
    "#{first_name} #{last_name}"
  end
  def self.find_by_name(name)
    all.find do |customer|
      customer.full_name == name
    end
  end
  def self.find_all_by_first_name(name)
    all.select do |customer|
      customer.first_name == name
    end
  end
  def self.all_names
    all.map do |customer|
      customer.full_name
    end
  end
  def self.all
    @@all
  end
end
