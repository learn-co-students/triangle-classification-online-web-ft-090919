class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3, :type
  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
    @type = type
  end
  
  def kind
    triangle_valid
    if length1 == length2 && length2 == length3
      :equilateral
    elsif length1 == length2 || length2 == length3 || length1 == length3
      :isosceles
    else
      :scalene
    end
  end

  def triangle_valid
    valid_triangle = [(length1 + length2 > length3), (length1 + length3 > length2), (length2 + length3 > length1)]
    [length1, length2, length3].each do |sides|
      valid_triangle << false if sides <= 0 
    raise TriangleError if valid_triangle.include?(false)
    end
  end
  
  class TriangleError < StandardError
  end
end
