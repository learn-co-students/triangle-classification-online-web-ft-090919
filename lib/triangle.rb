require 'pry-moves'

class Triangle

  attr_accessor :sides

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
  end

  def kind

    raise TriangleError if !sides.select {|side| side <= 0}.empty?

    raise TriangleError if !check_inequality?

    if sides.sum > 0 && sides.all?(&:positive?)

      if sides[0] == sides[1] && sides[1] == sides[2]
        :equilateral
      elsif (sides[0] == sides[1]) || (sides[1] == sides[2]) || (sides[0] == sides[2])
        :isosceles
      elsif sides[0] != sides[1] && sides[1] != sides[2] && sides[0] != sides[2]
        :scalene
      end

    end

  end


  # check triangle inequality here
  def check_inequality?
    max_side = @sides.max
    sum_of_other_sides = 0

    other_sides = @sides.reject {|side| side == max_side}

    # fix for when there is another side equal to the max_side EX. [10,10,4]
    if other_sides.count == 2
      sum_of_other_sides = other_sides[0] + other_sides[1]
    elsif other_sides.count == 1
      sum_of_other_sides = other_sides[0] + max_side
    end

    # if passes inequality or all sides are equal then return true else return false
    if sum_of_other_sides > max_side 
      true
    else
      false
    end

  end



  class TriangleError < StandardError; end

end
