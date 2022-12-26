class Triangle
  def initialize(sides)
    @side1 = sides[0]
    @side2 = sides[1]
    @side3 = sides[2]
  end

  def triangle?
    return false unless [@side1, @side2, @side3].all? { |side| side > 0 }
    return true if @side1 + @side2 >= @side3 &&
                   @side2 + @side3 >= @side1 &&
                   @side1 + @side3 >= @side2
  end

  def equilateral?
    return false unless triangle?
    @side1 == @side2 && @side2 == @side3
  end

  def isosceles?
    return false unless triangle?
    [@side1 == @side2, @side2 == @side3, @side1 == @side3].count(true) >= 1
  end

  def scalene?
    return false unless triangle?
    @side1 != @side2 && @side2 != @side3 && @side1 != @side3
  end
end
