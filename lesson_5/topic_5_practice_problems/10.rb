# Given the following data structure and without modifying the original array, use the map method to return a new array identical in structure to the original but where the value of each integer is incremented by 1.

arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

# - Don't modify the original array.
# - Use map to return a new array
# - New array structure == original
# - Value of each integer +1
# - Hint: initialize an empty hash


arr2 = arr.map do |hsh|
  incremented_hash = {} # Why is this required?? Haven't seen enough of these in examples. Maybe any at all until now??
  hsh.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end

p arr2
