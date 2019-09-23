require "pry"
class Customer
  attr_accessor :name, :age

  ###====== CLASS ======
  @@all = []
  
  def self.all
    @@all
  end
  
  ###====== INSTANCE ======
  def initialize(name, age)
    @name = name
    @age = age
    save
  end

  def save
    Customer.all << self
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  def meals 
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
 
  def waiters 
    meals.map do |meal|
      meal.waiter
    end
  end



end