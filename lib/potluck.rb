class Potluck
  attr_reader :date
  attr_accessor :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    @dishes << dish
  end

  def get_all_from_category(specified_category)
    dishes.select do |dish|
      specified_category == dish.category
    end
  end

end
