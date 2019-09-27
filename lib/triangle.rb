class Triangle
  attr_accessor :side1, :side2, :side3 
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2 
    @side3 = side3 
  end 
  
  def kind 
 
    raise TriangleError if illegal?
    return :equilateral if equilateral?
    return :isosceles if isosceles?
    return :scalene if scalene?
    
  end 
  
  def equilateral?
   @side1 == @side2 && @side2 == @side3
  end 
  
  def isosceles?
    (@side1 == @side2 && @side1 != @side3) || (@side1 == @side3 && @side1 != @side2) || (@side2 == @side3 && @side1 != @side3)
  end 
  
  def scalene?
    @side1 != @side2 && @side2 != @side3
  end 
  
  def illegal?
    if @side1 == 0 || @side2 == 0 || @side3 == 0
      true 
    elsif @side1 >= (@side2 + @side3) || @side2 >= (@side1 + @side3) || @side3 >= (@side1 + @side2)
      true 
    end 
  end 
  
  class TriangleError < StandardError
  end
  
end