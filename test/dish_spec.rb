require './lib/dish.rb'
require 'pry'

RSpec.describe do
  it 'exists' do
    dish = Dish.new("Pizza", :entree)

    expect(dish).to be_instance_of(Dish)
  end

  it 'has a name' do
    dish = Dish.new("Spaghetti", :entree)

    expect(dish.name).to eq("Spaghetti")
  end

  it 'has a category' do
    dish = Dish.new("Spaghetti", :breakfast)

    expect(dish.category).to eq(:breakfast)
  end
end
