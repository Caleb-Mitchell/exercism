# frozen_string_literal: true

# class converts numbers into strings based on number's factors
class Raindrops
  def self.convert(number)
    return number.to_s if no_desired_factors?(number)

    result = []
    result << 'Pling' if (number % 3).zero?
    result << 'Plang' if (number % 5).zero?
    result << 'Plong' if (number % 7).zero?
    result.join
  end

  class << self
    private

    def no_desired_factors?(number)
      [3, 5, 7].none? { |num| (number % num).zero? }
    end
  end
end
