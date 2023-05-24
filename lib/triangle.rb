class Triangle
  # write code here
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c

    @sides=[a,b,c]
  end

  def kind
    if @a<=0 || @b<=0 || @c<=0
      raise TriangleError
    end

   @sides.tally.each do |side|
      raise TriangleError if side[0]>=(@sides.sum-side[0])
    end

    if @sides.uniq.length==1
      :equilateral
    elsif @sides.uniq.length==2
      :isosceles
    else
      :scalene
    end
  end

    class TriangleError < StandardError
      def message
        "stop,stop! What are these! the triangle is invalid"
      end
    end
end
my_T=Triangle.new(4,3,2)
pp my_T.kind