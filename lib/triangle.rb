class Triangle

  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def kind
    valid?
    if a == b && b == c
      :equilateral
    elsif a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def valid?
    valid = [(a + b > c), (a + c > b), (b + c > a)]
    @sides.each {|side| valid << false if side <= 0 }
    raise TriangleError if valid.include?(false)
  end

  class TriangleError < StandardError
  end

end
