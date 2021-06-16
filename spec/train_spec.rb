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
end
