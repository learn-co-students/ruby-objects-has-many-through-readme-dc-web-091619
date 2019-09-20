class Meal
    #meal class will be the joining class
    #we are passing in waiter and customer from those classes
    attr_accessor :waiter, :customer, :total, :tip 

    @@all = [] 

    def initialize(waiter, customer, total, tip=0)
        @waiter = waiter
        @customer = customer
        @total = total 
        @tip = tip 
        @@all  << self 
    end

    def self.all
        @@all
    end
end