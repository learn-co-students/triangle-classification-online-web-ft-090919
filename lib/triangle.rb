class Triangle
  attr_accessor :s1, :s2, :s3
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end
  
  def kind 
    if s1 = s2 = s3 then
      return :equilateral
    end
    if s1 != s2 and
       s2 != s3 and 
       s1 != s3 then
      return :scalene
    end
  end
  
  class TriangleError < StandardError
  
  end
end
