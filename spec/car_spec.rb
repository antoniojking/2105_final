require 'rspec'
require './lib/car'

describe Car do
  it 'exists with attributes' do
    car1 = Car.new({type: 'Mail', weight: 5})
    car2 = Car.new({type: 'Passengers', weight: 1})

    expect(car1).to be_an(Car)
    expect(car1.type).to eq('Mail')
    expect(car1.weight).to eq(5)
  end
end
