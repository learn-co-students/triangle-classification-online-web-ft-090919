class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind #returns symbol

    # Check if triangle is valid
      # If invalid, raise TriangleError
    # If valid then check for triangle type
      # :equilateral
      # :isosceles
      # :scalene

    if self.valid?
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
        :scalene
      elsif (@side_1 == @side_2 && @side_1 != @side_3) ||
        (@side_2 == @side_3 && @side_2 != @side_1) ||
        (@side_1 == @side_3 && @side_1 != @side_2)
        :isosceles
      end
    else
      raise TriangleError
    end

  end

  def valid?
    # sum of the lengths of any two sides of a triangle always exceeds the length of the third side
    # each side must be larger than 0

    if @side_1 > 0 && @side_2 > 0 && @side_3 > 0 &&
      (@side_1 + @side_2) > @side_3 &&
      (@side_2 + @side_3) > @side_1 &&
      (@side_3 + @side_1) > @side_2
      true
    else
      false
    end

  end

  # Create custom TriangleError here
  class TriangleError < StandardError
  end

end
