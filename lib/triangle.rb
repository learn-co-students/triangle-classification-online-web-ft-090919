class Triangle
  # write code here
  def initialize(sidea, sideb, sidec)
    @sidea = sidea
    @sideb = sideb
    @sidec = sidec
  end

  class TriangleError < StandardError


  end
  def kind
    if (@sidea <= 0) || (@sideb <= 0) || (@sidec <= 0)
      raise TriangleError
    elsif (@sidea + @sideb <= @sidec) || (@sidea + @sidec <= @sideb) || (@sideb + @sidec <= @sidea)
          raise TriangleError
        else
    if (@sidea == @sideb) && (@sideb == @sidec)
      :equilateral
    elsif (@sidea == @sideb) || (@sideb == @sidec) || (@sidea == @sidec)
      :isosceles
    elsif (@sidea != @sideb) && (@sideb != @sidec) && (@sidea != @sidec)
      :scalene
    end
  end
  end
end
