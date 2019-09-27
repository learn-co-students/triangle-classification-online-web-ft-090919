class Triangle
 attr_accessor :x, :y, :z
 def initialize(x, y, z)
   @x = x
   @y = y
   @z = z
 end
 def kind
   if x <= 0 || y <= 0 || z <= 0 || x >= y + z || y >= x + z || z >= x + y
     raise TriangleError
   elsif x == y && y == z
     :equilateral
   elsif (x == y && y != z) || (y == z && x != z) || (z == x && y != x)
     :isosceles
   else
     :scalene
   end
 end
 class TriangleError < StandardError
   
 end
end
