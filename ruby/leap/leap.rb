# frozen_string_literal: true

# class reports if a given year is a leap year
class Year
  def self.leap?(year)
    return true if (year % 400).zero? || ((year % 4).zero? && (year % 100 != 0))

    false
  end
end
