require './lib/dish.rb'
require './lib/potluck.rb'
require 'pry'

RSpec.describe do
  it 'exists' do
    dish = Dish.new("Pizza", :entree)
    potluck = Potluck.new("7-13-18")

    expect(potluck).to be_instance_of(Potluck)
  end

  it 'has a date' do
    dish = Dish.new("Spaghetti", :entree)
    potluck = Potluck.new("7-13-18")

    expect(potluck.date).to eq("7-13-18")
  end

  it 'has an empty array of dishes to start' do
    dish = Dish.new("Spaghetti", :breakfast)
    potluck = Potluck.new("7-13-18")

    expect(potluck.dishes).to eq([])
  end

  it 'can add dishes' do
    potluck = Potluck.new("7-13-18")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad,cocktail_meatballs])
  end

  it 'can tell us the length of the dishes array after adding dishes' do
    potluck = Potluck.new("7-10-22")
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    spaghetti = Dish.new("Spaghetti", :entree)
    oatmeal = Dish.new("Oatmeal", :breakfast)

    potluck.add_dish(couscous_salad)
    potluck.add_dish(spaghetti)
    potluck.add_dish(oatmeal)

    expect(potluck.dishes.length).to eq(3)
  end


end
