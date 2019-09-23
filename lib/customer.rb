class Customer
  @@all = []
    attr_accessor :name, :age, :total, :customer
    def initialize(name,age)
    @name = name
    @age = age
    
    @@all << self
    end

    def new(name,age)
        Customer.new(name,age)
    end
      # def new_meal(waiter, customer, total, tip=0)
      #   # Waiter.all.select {|waiter| waiter.name == waiter}
      #    Meal.new(waiter, self, total, tip)
    #  end
    def self.all
        @@all
    end
    def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end
  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
 
  
end