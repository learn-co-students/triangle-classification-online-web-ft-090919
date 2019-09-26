class Triangle
  
  attr_accessor :a, :b, :c
 
  def initialize(a,b,c)
    @a,@b,@c = a,b,c
  end
    
   def kind
     error?
    if @a == @b && @b == @c
      :equilateral
    elsif  
      @a == @b || @b == @c ||@a == @c
      :isosceles
     else
      :scalene
     end
   end
     
     def error?
      if @a + @b + @c <=0
        raise TriangleError
      elsif 
       (@a + @b < @c) || (@b + @c < @a) || (@a + @c < @b) 
        raise TriangleError  
      elsif
        (@a+@b == @c) || (@a+@c == @b)
        raise TriangleError
      end
     end
  
   class TriangleError < StandardError
   end
end

