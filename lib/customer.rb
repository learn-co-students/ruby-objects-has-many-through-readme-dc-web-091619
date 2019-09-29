class Customer
  @@all = []
  attr_reader :name, :age

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip=0)
        # NEW MEAL INSTANCE FOR A CUSTOMER
        # takes in a new instance of a waiter as an argument
# take in total and tip=0
        Meal.new(waiter, self, total, tip)
        # a new instance of meal << see meal.rb >> takes in a waiter, customer, total, and tip
        # self refers to customer since this is created in customer.rb
    end

    def meals
        Meal.all.select do |meal| meal.customer == self
        end
# iterates through each meal instance and extracts only those that match (==) this customer instance
    end

    def waiters
        meals.map do |meal|
            meal.waiter
        end
    end

    def last_waiter
        get_waiters.last.name
    # gets the name of the most recent waiter that a customer had
    end



end


# joe = Customer.new("Joe", 42)
# patty = Customer.new("Patty", 29)
# mike = Customer.new("Mike", 33)
# charlie = Customer.new("Charlie", 32)