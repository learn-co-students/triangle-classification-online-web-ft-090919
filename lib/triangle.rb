class Triangle
  class TriangleError < StandardError
    "defined shape is not a triangle"
  end
  
  
  attr_writer :side_1, :side_2, :side_3
  
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end 
  
  def triangle?
     if @side_1 <= 0 || @side_2 <= 0 || @side_3 <= 0
      return false
    elsif @side_1+@side_2 <= @side_3 || @side_1+@side_3 <= @side_2 || @side_2+@side_3 <= @side_1
      return false 
    else 
     return true
    end
  end 
  
  
  def kind 
    if self.triangle? == false
      raise TriangleError
    else
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_3 == @side_1
        :isosceles
      elsif @side_1 != @side_2 && @side_2 != @side_3 && @side_3 != @side_1
        :scalene
      end
    end 
  end 
end  
  
  
  
  

