require 'pry'

class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    sides = [side1, side2, side3]
    uniq_count = sides.sort!.uniq.count
    # binding.pry
    if sides.select {|side| side <= 0}.count > 0 || sides[0] + sides[1] <= sides[2]
      raise TriangleError
    elsif uniq_count == 1
      :equilateral
    elsif uniq_count == 2
      :isosceles
    elsif uniq_count == 3
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
