class Triangle
  # write code here
  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0
       begin
        raise TriangleError
       end
      end

  end

  def kind
    if @side1 + @side2 <= @side3 ||
      @side1 + @side3 <= @side2 ||
      @side2 + @side3 <= @side1
      begin
        raise TriangleError
      end

      else
        if @side1 == @side2 && @side2 == @side3
          return :equilateral
        elsif @side1 == @side2 || @side2 == @side3 || @side3 == @side1
          return :isosceles
        else
          return :scalene
        end
    end
    
  end

  class TriangleError < StandardError

  end

end
