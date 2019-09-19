class Waiter
    attr_reader :name, :experience
    @@all = []
    
    def initialize(name,experience)
      @name=name
      @experience=name
      @@all << self
    end
  
    def self.all
      @@all
    end

    def new_meal(customer,total,tip)
        Meal.new(self,customer,total,tip)
      end
    
      def meals
        Meal.all.select {|meal| meal.waiter == self}
      end
    
      def best_tipper
    
    #using .sort... not perfect, but not hideous

        meals_by_tip = meals.sort {|meal1, meal2| meal2.tip <=> meal1.tip }
        meals_by_tip[0].customer
    
    #using .each is uggo

        #     best_tip = 0
    #     meals.each do |meal| 
    #         best_tip = meal.tip if  meal.tip > best_tip
    #     end
        
    #     best_customer = nil

    #     meals.each do |meal| 
    #         best_customer = meal.customer if meal.tip == best_tip
    #     end

    #    best_customer

      end

end