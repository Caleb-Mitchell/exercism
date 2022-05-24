class AssemblyLine
  attr_reader :speed

  BASE_CARS_PER_HOUR = 221

  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case speed
    when (1..4) then speed * BASE_CARS_PER_HOUR
    when (5..8) then speed * (BASE_CARS_PER_HOUR * 0.9)
    when 9      then speed * (BASE_CARS_PER_HOUR * 0.8)
    when 10     then speed * (BASE_CARS_PER_HOUR * 0.77)
    end
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
