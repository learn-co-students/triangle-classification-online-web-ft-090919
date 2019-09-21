class Triangle
  attr_reader :side_a, :side_b, :side_c
  
  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end
  
  def kind
    sides = [@side_a, @side_b, @side_c]
    sorted_sides = sides.sort
    if sorted_sides[0] + sorted_sides[1] <= sorted_sides[2] 
      raise TriangleError
    elsif sides.any? {|side| (side == 0) || (side < 0)} 
      raise TriangleError
    else
      if sides.uniq.length == 1
        :equilateral
      elsif sides.uniq.length == 2
        :isosceles
      else
        :scalene
      end
    end
    
  end
  
  class TriangleError < StandardError
  end
  
  
end
