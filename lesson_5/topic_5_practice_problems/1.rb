# How would you order this array of number strings by descending numeric value?

arr = ['10', '11', '9', '7', '8']

p "Original array: #{arr}"

arr2 = arr.map do |e|
  e.to_i
end

p "Sorted array: #{arr2.sort.reverse}" # But returns integers

# LS Solution:

arr.sort do |a,b|
  b.to_i <=> a.to_i
end
# => ["11", "10", "9", "8", "7"]
