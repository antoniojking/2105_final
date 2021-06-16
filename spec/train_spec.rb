require 'rspec'
require './lib/train'

describe Train do
  it 'exists with attributes' do
    train1 = Train.new({name: 'Thomas', type: 'Tank'})

    expect(train1).to be_an(Train)
    expect(train1.name).to eq('Thomas')
    expect(train1.type).to eq('Tank')
    expect(train1.cargo).to eq({})
  end

  it 'count_cars' do
    train1 = Train.new({name: 'Thomas', type: 'Tank'})
    car1 = Car.new({type: 'Mail', weight: 5})

    expect(train1.count_cars(car1)).to eq(0)
  end

  it 'count_cars' do
    train1 = Train.new({name: 'Thomas', type: 'Tank'})
    car1 = Car.new({type: 'Mail', weight: 5})

    expect(train1.count_cars(car1)).to eq(0)
  end

  it 'add_cars' do
    train1 = Train.new({name: 'Thomas', type: 'Tank'})
    car1 = Car.new({type: 'Mail', weight: 5})
    car2 = Car.new({type: 'Passengers', weight: 1})

    train1.add_cars(car1, 2)

    expect(train1.cargo).to eq({car1 => 2})
    expect(train1.count_cars(car1)).to eq(2)

    train1.add_cars(car1, 3)

    expect(train1.cargo).to eq({car1 => 5})
    expect(train1.count_cars(car1)).to eq(5)

    train1.add_cars(car2, 10)

    expect(train1.cargo).to eq({car1 => 5, car2 => 10})
  end
end
