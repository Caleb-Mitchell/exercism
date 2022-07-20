# frozen_string_literal: true

# class Hamming used to compute Hamming distance between two DNA strands
class Hamming
  def self.compute(str1, str2)
    raise ArgumentError if str1.length != str2.length

    chars1 = str1.chars
    chars2 = str2.chars
    count = 0

    chars1.each_with_index do |char, idx|
      count += 1 if char != chars2[idx]
    end
    count
  end
end
