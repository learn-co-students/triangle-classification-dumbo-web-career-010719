class Triangle
@@all  = []
attr_accessor :num1, :num2, :num3
def initialize(num1,num2,num3)
	@num1 = num1
	@num2 = num2
	@num3 = num3
	@@all << self
	    p [@num1, @num2, @num3]
	    p [@num1, @num2, @num3].include?0


end

def kind
		if @num1<0||@num2<0||@num3<0
			# begin
	    		raise TriangleError
		    # rescue TriangleError => error
	     #    	puts error.message
	    	# end
		end
		if [@num1, @num2, @num3].include?0
			# begin
	    		raise TriangleError
		    # rescue TriangleError => error
	     #    	puts error.message
	    	# end
	    end
	    	
	    if @num1+@num2 <= @num3 || @num1+@num3 <= @num2 || @num2+@num3 <= @num1
			# begin
	    		raise TriangleError
		    # rescue TriangleError => error
	     #    	puts error.message
	    	# end
	    end

	if @num1 == @num2 && @num2 == @num3
		return :equilateral
	elsif @num1!=@num2 && @num2!=@num3 && @num1!=@num3
		return :scalene
	elsif @num1 == @num2 && @num1+@num2 > @num3 || @num1 == @num3 && @num1+@num3 > @num2 || @num2 == @num3 && @num2+@num3 > @num1
		return :isosceles
	# else
			# begin
	    		# raise TriangleError
		    # rescue TriangleError => error
	     #    	puts error.message
	    	# end
    end	
end

# def raiseErrorRescue
# 	raise TriangleError

# 	rescue PartnerError => error
#         puts error.message
#     end

# end

class TriangleError < StandardError
    # triangle error code
    def message 
    	"Invalid"
    end
end


end
