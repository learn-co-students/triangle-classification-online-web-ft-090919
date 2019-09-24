class Triangle
  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3]
  end

  def kind
    raise TriangleError unless valid?
    equal_sides = 3 - @sides.uniq.count
    case equal_sides
    when 0
      :scalene
    when 1
      :isosceles
    when 2
      :equilateral
    end
  end

  def valid?
    @sides.all? { |side| side > 0 } && @sides.min(2).sum > @sides.max
  end

  class TriangleError < StandardError
  end
end
