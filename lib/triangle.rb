class Triangle
  # write code here
  attr_accessor :side1, :side2, :side3
  def initialize (side1, side2, side3)
    @side1=side1
    @side2=side2
    @side3=side3
  end

  def kind
    if side1 == side2 && side2== side3 && side1==side3 
        noSideIllegal || inequalityIllegal
        :equilateral
    elsif side2 == side3 || side1 == side3 || side1==side2
        inequalityIllegal 
        :isosceles
    else
      if (side1<0 || side2<0 ||side3<0) || inequalityIllegal
        raise TriangleError
      end
        :scalene
    end
  end

  def inequalityIllegal
     if side1+side2 <= side3 || side2+side3 <= side1 || side1+side3 <= side2
        raise TriangleError
     end
  end

  def noSideIllegal
    if side1==0 && side2==0 && side3==0
      raise TriangleError
    end
  end
  

  class TriangleError < StandardError

  end

end
