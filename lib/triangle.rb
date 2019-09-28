class Triangle
  attr_accessor :equilateral, :isosceles, :scalene

  def initialize(s1, s2, s3)
    @triangle_sides = [s1,s2,s3]

    if @triangle_sides.any? {|x| x <= 0 } 
        raise TriangleError
    end 

    sides = @triangle_sides.sort 
    if sides[0]+sides[1] <= sides[2]
        raise TriangleError
    end 

  end  

  def kind
    if @triangle_sides.uniq.count == 1
      :equilateral
    elsif @triangle_sides.uniq.count == 3
      :scalene
    elsif @triangle_sides.uniq.count == 2
      :isosceles
    end
  end 
  class TriangleError < StandardError
    def message 
      "This is not a valid Triangle."
    end
  end 
end
