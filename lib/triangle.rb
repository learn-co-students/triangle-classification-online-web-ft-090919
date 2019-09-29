class Triangle
    attr_accessor :first, :second, :third

    def initialize(first, second, third)
        @first = first
        @second = second
        @third = third
    end

    def kind
        sides = [@first, @second, @third]
        copy = sides.dup
        if (@first + @second <= @third) || (@first + @third <= @second) || (@second + @third <= @first) || sides.any? { |side| side <= 0 }
            raise TriangleError
        else
            if sides.uniq.length == 1
                return :equilateral
            end
            if sides.uniq.length == 2
                return :isosceles
            end
            if sides.uniq.length == 3
                return :scalene
            end
        end
    end

    class TriangleError < StandardError
        def message
            "Invalid Triangle"
        end
    end

end