class Potluck
  attr_reader :date, :dishes, :menu

  def initialize(date)
    @date = date
    @dishes = []
    @menu = Hash.new([])
  end

  def add_dish(dish)
    @dishes << dish
    dishes.each do |dish|
      #key & value are correct but it's
      #overwriting the value instead of adding to it
      @menu[dish.category] = [dish.name]
    end
  end

  def get_all_from_category(category)
    @dishes.select do |dish|
      category == dish.category
    end
  end


end
