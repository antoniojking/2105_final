class TrainYard
  attr_reader :location,
              :trains

  def initialize(info)
    @location = info[:location]
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def types_of_trains
    types = @trains.map do |train|
      train.type
    end
    types.uniq.sort
  end

  def trains_containing(car)
    @trains.find_all do |train|
      train if train.cargo.keys.include?(car)
    end
  end

  def sorted_cargo_list
    @trains.map do |train|
      train.cargo.keys.map do |car|
        car.type
      end
    end.flatten.uniq.sort
  end

  def total_inventory
    hash = Hash.new(0)

    @trains.map do |train|
      train.cargo.keys.map do |car|
        require "pry"; binding.pry
        hash[car]
      end
    end
  end
end
