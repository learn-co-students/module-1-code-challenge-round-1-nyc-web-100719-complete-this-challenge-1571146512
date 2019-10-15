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

  def num_reviews
    num = Review.all.select do |review|
    #binding.pry 
    review.customer == self 
    end 
    num.count
  end 

  def restaurants
    rest = Review.all.select do |review|
      review.customer == self
    end 
    new_rest = rest.map do |restaurant|
      #binding.pry
      restaurant.restaurant
    end 
    new_rest.uniq
  end

  def self.find_by_name(name)
    Customer.all.find do |customer|
      customer.full_name == name
    end 
  end 

  def self.find_all_by_first_name(name)
    # llamo = @@all.map do |name|
    #   name.first_name 
    # end 
    @@all.select do |name|
      binding.pry
      name == self 
    end 
  end 

  def self.all_names
    self.full_name.each do |customer|
      customer
    end 
  end 


  
end
