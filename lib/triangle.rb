class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  
  def kind
    if (side_3 + side_2 > side_1) && (side_1 + side_2 > side_3) && (side_3 + side_1 > side_2)
      case
        when side_3 == side_2 && side_2 == side_1
          :equilateral
        when (side_2 == side_3 && side_2 > side_1) || (side_1 == side_2 && side_2 > side_3) || (side_3 == side_1 && side_1 > side_2)
          :isosceles
        when side_3 != side_2 && side_2 != side_1 && side_1 != side_3
          :scalene
      end
    else
      raise TriangleError
    end
        
  end
  
  class TriangleError < StandardError
    def message
      "The sum of the lengths of any two sides of a triangle always exceeds the length of the third side. This is a principle known as the triangle inequality. Further, each side must be larger than 0."
    end
  end
  
end
