class Train
  attr_reader :name,
              :type,
              :cargo

  def initialize(info)
    @name = info[:name]
    @type = info[:type]
    @cargo = Hash.new(0)
  end

  def count_cars(car)
    @cargo[car]
  end

  def add_cars(car, car_count)
    @cargo[car] += car_count
  end

  def weight
    weight_array = @cargo.map do |car, car_count|
      car.weight * car_count
    end
    weight_array.sum 
  end
end
