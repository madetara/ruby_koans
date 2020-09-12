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
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a + b <= c or a + c <= b or b + c <= a
    raise TriangleError
  end

  equal_sides = 0
  equal_sides += 1 if a == b
  equal_sides += 1 if b == c
  equal_sides += 1 if a == c

  case equal_sides
  when 0
    return :scalene
  when 1
    return :isosceles
  when 2..3
    return :equilateral
  else
    raise TriangleError
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
