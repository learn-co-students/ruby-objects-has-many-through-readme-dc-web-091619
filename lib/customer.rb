require "pry"

class Customer
    attr_accessor :name, :age, :meals
    
    @all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self 
  end

  def self.all 
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip) #self is the customer since we are in the customer class
  end

  def meals
    Meal.all.select do |meal|
        meal.customer == self #self is Customer, since we are looking for the meals belonging to the Customer
    end
  end

  def waiters
    meals.map do |meal|
        meal.waiter
    end
  end

end