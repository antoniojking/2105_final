require 'rspec'
require './lib/car'
require './lib/train'
require './lib/train_yard'

describe TrainYard do
  it 'exists with attributes' do
    train_yard = TrainYard.new({location: 'Brighton'})

    expect(train_yard).to be_an(TrainYard)
    expect(train_yard.location).to eq('Brighton')
  end
end
