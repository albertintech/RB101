# Given this data structure, return a new array of the same structure but with the sub arrays being ordered (alphabetically or numerically as appropriate) in descending order.

arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

p "Original array: #{arr}"

p arr[0].sort
p arr[1].sort
p arr[2].sort

arr2 = []
arr.each do |e|
  arr2 << e.sort
end

p "Sorted array: #{arr2}"

arr.map do |sub_arr|
  sub_arr.sort do |a, b|
    b <=> a
  end
end
# => [["c", "b", "a"], [3, 2, 1], ["green", "blue", "black"]]
