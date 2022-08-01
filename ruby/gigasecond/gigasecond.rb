# frozen_string_literal: true

# this class returns the moment that would be after a gigasecond has passed
# following an initial time
class Gigasecond
  GIGASECOND = 1_000_000_000

  def self.from(time)
    time + GIGASECOND
  end
end
