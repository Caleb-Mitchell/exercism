# frozen_string_literal: true

# class handles conversion of string representing a matrix into either
# its rows or columns
class Matrix
  def initialize(string)
    @matrix = convert_string_to_num_array(string)
  end

  def convert_string_to_num_array(string)
    string_matrix = string.split("\n").map! { |sub| sub.split(' ') }
    string_matrix.map { |sub_array| sub_array.map!(&:to_i) }
  end

  def rows
    @matrix
  end

  def columns
    columns = []
    @matrix.first.each_index do |idx|
      new_array = []
      @matrix.each { |sub_array| new_array << sub_array[idx] }
      columns << new_array
    end
    columns
  end
end
