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
end
