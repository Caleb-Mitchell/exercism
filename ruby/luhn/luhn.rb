# frozen_string_literal: true

# class determines if a given string if valid per the Luhn formula
class Luhn
  def self.valid?(string)
    string.gsub!(' ', '')
    return false if string.length <= 1

    numbers = string.chars
    return false if numbers.any? { |num| num.match?(/[^\d]/) }

    reverse_nums = numbers.reverse
    double_every_second_digit(reverse_nums)
    double_to_single_digit(reverse_nums)
    return true if (reverse_nums.sum % 10).zero?

    false
  end

  class << self
    private

    def double_every_second_digit(num_array)
      num_array.map!(&:to_i).map!.with_index do |num, idx|
        idx.odd? ? (num * 2) : num
      end
    end

    def double_to_single_digit(num_array)
      num_array.map! do |num|
        num > 9 ? (num - 9) : num
      end
    end
  end
end
