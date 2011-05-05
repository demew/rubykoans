# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2. rb
#
def triangle(a, b, c)
  if !are_sides_greater_than_zero?(a,b,c) || !are_sides_valid_for_inequality?(a,b,c)
    raise TriangleError
  elsif (a == b) && (a == c)
    return :equilateral
  elsif (a == b) || (a == c) || (b == c)
    return :isosceles
  else
    return :scalene
  end
end

def are_sides_greater_than_zero?(a, b, c)
  return (a > 0) && (b > 0) && (c > 0)
end

def are_sides_valid_for_inequality?(a, b, c)
  # Triangle Inequality states that for any triangle, the sum of the lengths
  # of any two sides must be greater than the length of the remaining side
  sides = [a, b, c].sort #ascending
  return sides[0] + sides[1] > sides[2] 
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
