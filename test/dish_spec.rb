require './lib/dish'

RSpec.describe Dish do
  it 'exists' do
    dish = Dish.new("Pizza", "Italian")
    expect(dish).to be_instance_of(Dish)
  end

  it 'has a name' do
    dish = Dish.new("Pizza", :Entree)
    expect(dish.name).to eq("Pizza")
  end

  it 'has a category' do
    dish = Dish.new("Pizza", :Entree)
    expect(dish.category).to eq(:Entree)
  end

end
