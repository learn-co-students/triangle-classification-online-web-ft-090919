class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a,b,c)
    @a = a 
    @b = b 
    @c = c
  end 
  
  def kind
    if a == 0 || b == 0 || c == 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    elsif a == b && b == c
      kind = :equilateral
    elsif a == b && a != c || b == c && b != a || a == c && a != b
      kind = :isosceles
    else
      kind = :scalene
    end
  end
  
  class TriangleError < StandardError
  end 
end
