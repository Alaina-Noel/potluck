class Potluck
  attr_reader :date, :dishes, :menu

  def initialize(date)
    @date = date
    @dishes = []
    @menu = Hash.new([])
  end

  def add_dish(dish)
    @dishes << dish
    dish_objects = dishes.group_by do |dish|
      dish.category
      #I have the correct key but the values are the objects instead of
      #the object names
    end
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      category == dish.category
    end
  end

  def menu
    menu_hash = {
      appetizers: [],
      entres: [],
      desserts: []
    }

    @dishes.each do |dish|
      require "pry"
      binding.pry
    end
    #update the menu variable to be a hash where
    #the key is the type of dish &
    #the value is an array with the name of each dish
    #of that type.
    #outer loop: cycle through all dishes
    #inner loop:


end
