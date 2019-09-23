require 'pry'
class Waiter
  @@all = []
    attr_accessor :name, :yrs, :total, :tip, :customer

    def initialize(name,yrs)
        @name = name
        @yrs = yrs
        @@all << self
    end
    def new(name,age)
        name = Waiter.new(name,yrs)
    end
    def self.all
        @@all
    end

def waiters
  meals.map do |meal|
    meal.waiter
  end
end

  def new_meal(customer, total, tip=0)
    #  customer = Customer.name 
    Meal.new(self, customer, total, tip)
  end
  def meals
    meals = Meal.all.select do |meal|
    meal.waiter == self
    end
  end
  def best_tipper
    best_tip = 0
    Meal.all.each do |meal|
     meal.tip > best_tip
     best_tip = self
      binding.pry
    end
  end
end
