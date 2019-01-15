class Triangle
  attr_reader :sides

  def initialize(s1, s2, s3)
    @sides = [s1, s2, s3].sort
  end

  def kind
    if self.validTri?
      if self.equilateral?
        return :equilateral
      elsif self.isosceles?
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  def equilateral?
    side = @sides[0]
    return @sides.all? { |elem| side == elem
    }
  end

  def isosceles?
    @sides[1] == @sides[2] ? true : false
  end
  
  def validTri?
    if @sides[0] <= 0 || @sides[1] <= 0 || @sides[2] <= 0
      return false
    end
    if !(@sides[0] + @sides[1] > @sides[2])
      return false
    elsif !(@sides[1] + @sides[2] > @sides[0])
      return false
    elsif !(@sides[0] + @sides[2] >= @sides[1])
      return false
    end
    return true
  end

  class TriangleError < StandardError
    puts "ERROR"
  end
end
