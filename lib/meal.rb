class Meal
    @@all = []

    attr_accessor :waiter, :customer, :total, :tip

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
    end

    def self.all
        @@all
    end

end




# m1 = Meal.new("Pete", "Joe", 35, 10)
# m2 = Meal.new("Jack", "Patty", 30, 5)
# m3 = Meal.new("Sara", "Mike", 25, 5)
# m4 = Meal.new("Samuel", "Mike", 55, 20)
# m5 = Meal.new("Charlene", "Charlie", 60, 10)