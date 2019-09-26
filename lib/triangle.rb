class Triangle

  attr_accessor :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    if ((@side_a <= 0 || @side_b <= 0 || @side_c <= 0) || (@side_a >= @side_b + @side_c || @side_b >= @side_a + @side_c || @side_c >= @side_a + @side_b))
      raise TriangleError
    elsif (@side_a == @side_b && @side_b == @side_c )
      return :equilateral
    elsif((@side_a == @side_b && @side_b != @side_c) || (@side_b == @side_c && @side_a != @side_b) || (@side_c == @side_a && @side_a != @side_b))
      return :isosceles
    elsif(@side_a != @side_b && @side_b != @side_c && @side_a != @side_c)
      return :scalene
    end
  end

  class TriangleError < StandardError
    "invalid entry(s) - follow triangle inequality - sides must also be larger than 0"
  end

end

# The sum of the lengths of any two sides of a triangle always exceeds the length of the third side.
# This is a principle known as the triangle inequality.
#
# Further, each side must be larger than 0.
