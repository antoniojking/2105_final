class TrainYard
  attr_reader :location

  def initialize(info)
    @location = info[:location]
  end
end
