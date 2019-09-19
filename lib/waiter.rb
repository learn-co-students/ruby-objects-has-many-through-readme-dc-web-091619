class Waiter

    attr_accessor :name, :yrs_experience

    @@all = []
  
    def initialize(name, yrs_experience)
      @name = name
      @yrs_experience = yrs_experience
      @@all << self
    end
  
    def self.all
      @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(self, customer, total, tip)
    end
    
end

# pat = Waiter.new("Pat", 2)
# alex = Waiter.new("Alex", 5)

# pat.new_meal(sam, 30, 5) 
# A Waiter creates a Meal, passing in a Customer instance