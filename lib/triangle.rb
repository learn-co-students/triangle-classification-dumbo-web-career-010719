class Triangle
  # write code here
  attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end

  def kind
    if length_check(length1, length2, length3) && length1 == length2 && length1 == length3
      return :equilateral
    elsif length_check(length1, length2, length3) && ((length1 == length2 || length2 == length3 || length3 == length1) && !(length1 == length2 && length1 == length3))
      return :isosceles
    elsif length_check(length1, length2, length3) && (length1 != length2 && length2 != length1 && length1 != length3)
      return :scalene
    end
    if !length_check(length1, length2, length3)

        raise TriangleError
    elsif length1 == 0 && length2 == 0 && length3 == 0
      raise TriangleError
    end


  end

  def length_check(side1, side2, side3)
    arr = [side1, side2, side3].sort
    (side1 > 0 && side2 > 0 && side3 > 0) && arr[2] < arr[0] +arr[1]
  end


  class TriangleError < StandardError
    def message
      "you must give proper triangle dimmensions."
    end
  end

end
