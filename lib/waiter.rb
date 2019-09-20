require "pry"
class Waiter
    attr_accessor :name, :yrs_experience

    @@all = []

    def initialize(name, yrs_experience)
        @name = name 
        @years = yrs_experience
        @@all << self
    end

    def self.all
        @@all 
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip) #self is the waiter since we are in the waiter class
    end

    def meals
        Meal.all.select do |meal|
            meal.waiter == self ##self if waiter since this time we are checking for the waiter and we are in the waiter class
        end
    end

    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
            meal_a.tip <=> meal_b.tip
        end

        best_tipped_meal.customer

    end
  

end