# frozen_string_literal: true

# class creates all contiguous slices of length n out of provided string
class Series
  def initialize(string)
    @string = string
  end

  def slices(slice_length)
    raise ArgumentError if slice_length > @string.length

    new_arr = []
    @string.chars.each_cons(slice_length) { |sub| new_arr << sub.join }
    new_arr
  end
end
