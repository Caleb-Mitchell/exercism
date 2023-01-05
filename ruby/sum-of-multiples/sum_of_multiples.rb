class SumOfMultiples
  def initialize(*multiples)
    @multiples = multiples
  end

  def to(upper)
    (0...upper).reduce do |sum, num|
      @multiples.any? { |mult| num % mult == 0 } ? sum + num : sum
    end
  end
end
