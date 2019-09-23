class Meal
  attr_accessor :waiter, :customer, :total, :tip

  ###====== CLASS ======
  @@all = []

  def self.all
    @@all
  end

  ###====== INSTANCE ======
  def initialize(waiter, customer, total, tip=0)
    @waiter = waiter
    @customer = customer
    @total = total
    @tip = tip
    save
  end

  def save
    Meal.all << self
  end

end