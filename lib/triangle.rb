require 'pry-moves'

class Triangle

  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind

    if self.equilateral?
      :equilateral
    elsif self.isosceles?
      :isosceles
    elsif self.scalene?
      :scalene
    else
      puts "Triangle Error"
    end


  end

  def equilateral?
    if @side_1 == @side_2 && @side_2 == @side_3
      true
    else
      false
    end
  end

  def isosceles?
    if @side_1 == @side_2 || @side_1 == @side_3 || @side_2 == @side_3
      true
    else
      false
    end
  end

  def scalene?
    if @side_1 != @side_2 && @side_2 != @side_3
      true
    else
      false
    end
  end


  class TriangleError < StandardError

    def message
      "** Triangle Error: Custom error thrown! **"
    end

  end

end
