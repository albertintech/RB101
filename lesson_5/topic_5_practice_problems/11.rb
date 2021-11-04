# Given the following data structure use a combination of methods, including either the select or reject method, to return a new array identical in structure to the original but containing only the integers that are multiples of 3.

arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
div_by_3 = []
arr.map do |sub_arr|
  sub_arr.select do |int|
    if int % 3 == 0
      div_by_3 << int
    end
  end
end

p div_by_3

# LS Solution

# arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
# arr.map do |element|
#   element.select do |num|
#     num % 3 == 0
#   end
# end
