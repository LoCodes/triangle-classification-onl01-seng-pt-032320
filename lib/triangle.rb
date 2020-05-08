# Triangle
#   knows that equilateral triangles have equal sides
#   knows that larger equilateral triangles also have equal sides
#   knows that isosceles triangles have last two sides equal
#   knows that isosceles triangles have first and last sides equal
#   knows that isosceles triangles have two first sides equal
#   knows that isosceles triangles have in fact exactly two sides equal
#   knows that scalene triangles have no equal sides
#   knows that scalene triangles have no equal sides at a larger scale too
#   knows that scalene triangles have no equal sides in descending order either
#   knows that very small triangles are legal
#   knows that triangles with no size are illegal
#   knows that triangles with negative sides are illegal
#   knows that triangles violating triangle inequality are illegal
#   knows that triangles violating triangle inequality are illegal 2
#   knows that triangles violating triangle inequality are illegal 3



class Triangle
  # write code here
  attr_accessor :side1, :side2 , :side3, :kind


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if (side1 * side2 * side3) == 0 || (side1 + side2) <= side3  || (side2 + side3) <= side1 || (side3 + side1) <= side2
      begin
        raise TriangleError
      end

    elsif side1 == side2 && side1 == side3
      self.kind = :equilateral

    elsif side1 == side2 || side1 == side3 || side2 == side3
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "not a triangle"
    end
  end
end
