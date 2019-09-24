class Triangle
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    sides = [self.first, self.second, self.third].uniq
    if (self.first > 0 && self.second > 0 && self.third > 0) && (self.first + self.second > self.third && self.second + self.third > self.first && self.first + self.third > self.second)
      type = case sides.length
              when 1 then :equilateral 
              when 2 then :isosceles 
              when 3 then :scalene
            end
    else
      raise TriangleError
    end

  end

  class TriangleError < StandardError
  end  

end
