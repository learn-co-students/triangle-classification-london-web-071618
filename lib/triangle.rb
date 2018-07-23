class Triangle

attr_accessor :length1, :length2, :length3

  def initialize(length1, length2, length3)
    @length1 = length1
    @length2 = length2
    @length3 = length3
  end


  def kind
    inequality_check
    if length1 <= 0 || length2 <= 0 || length3 <= 0
        raise TriangleError
    elsif length1 == length2 && length2 == length3
      :equilateral
    elsif length1 == length2 || length2 == length3 || length1 == length3
      :isosceles
    elsif length1 != length2 && length2 != length3 && length1 != length3
      :scalene
    end
  end

  def inequality_check
    array_sorted = [length1, length2, length3].sort
    if array_sorted.last >= array_sorted[0] + array_sorted[1]
        raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
