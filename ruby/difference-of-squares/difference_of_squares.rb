class Squares
  def initialize(num_squares)
    @num_squares = num_squares
  end

  def square_of_sum
    sum = (1..@num_squares).reduce(&:+)
    sum**2
  end

  def sum_of_squares
    (1..@num_squares).reduce do |memo, num|
      memo + (num**2)
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
