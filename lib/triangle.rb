require 'pry'
class Triangle
  
  attr_accessor :length_1, :length_2, :length_3
  
  def initialize (length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end


  def valid?
    var1 = @length_1 + @length_2 > @length_3 && @length_1 + @length_3 > @length_2 && @length_3 + @length_2 > @length_1
    var2 = @length_1 > 0 && @length_2 > 0 && @length_3 > 0
    #binding.pry
    var1 && var2
  end

  class TriangleError < StandardError
    def initialize(message)
      @message = message
    end

    def message
      @message
    end
  end

  def kind
    if @length_1 != @length_2 && @length_2 != @length_3 && @length_3 != @length_1 && self.valid?
      return :scalene
    elsif @length_1 == @length_2 && @length_2 == @length_3 && self.valid?
      return :equilateral
    elsif @length_1 == @length_2 && self.valid? || @length_2 == @length_3 && self.valid? || @length_1 == @length_3 && self.valid?
      return :isosceles
    else
        raise TriangleError.new("bad triangle")

      #rescue TriangleError => error
         #error.message
    end
  end

end

