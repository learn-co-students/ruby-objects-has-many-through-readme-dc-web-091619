class Waiter
    @@all = []
    attr_reader :name, :yrs_experience
  
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
    #   NEW MEAL INSTANCE FOR A WAITER
    # same as in customer.rb but self here is waiter
  end

  def meals
    Meal.all.select do |meal|
        meal.waiter == self
        end 
    # iterates through each meal instance and extracts only those that match (==) this waiter instance
    end

    def best_tipper
        best_tipper = meals.max do |meal_1, meal_2|
            meal_1.tip <=> meal_2.tip
        end
        best_tipper.customer
    end

end


# pete = Waiter.new("Pete", 10)
# jack = Waiter.new("Jack", 2)
# sara = Waiter.new("Sara", 5)
# samuel = Waiter.new("Samuel", 5)
# charlene = Waiter.new("Charlene", 15)