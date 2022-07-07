class Potluck
  attr_reader :date
  attr_accessor :dishes, :menu

  def initialize(date)
    @date = date
    @dishes = []
    @menu = Hash.new
  end

  def add_dish(dish)
    @dishes << dish
    require 'pry' ; binding.pry
    # self.name = menu[:category] #need to figure out how to add elements to a hash
  end

  def get_all_from_category(specified_category)
    dishes.select do |dish|
      specified_category == dish.category
    end
  end


end
#
# potluck = Potluck.new("7-13-18")
# couscous_salad = Dish.new("Couscous Salad", :appetizer)
# summer_pizza = Dish.new("Summer Pizza", :appetizer)
# roast_pork = Dish.new("Roast Pork", :entre)
# cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
# candy_salad = Dish.new("Candy Salad", :dessert)
# potluck.add_dish(couscous_salad)
# potluck.add_dish(summer_pizza)
# potluck.add_dish(roast_pork)
# potluck.add_dish(cocktail_meatballs)
# potluck.add_dish(candy_salad)
