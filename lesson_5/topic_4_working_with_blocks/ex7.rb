arr = [['1', '8', '11'], ['2', '6', '13'], ['2', '12', '15'], ['1', '8', '9']]

p arr

p arr.sort

p arr

arr2 = arr.sort_by do |sub_arr|
  sub_arr.map do |num|
    num.to_i
  end
end

p arr2

# LS Explination
# The key here is understanding that when we carry out transformation within a sort_by block, the transformed elements are what are then used to perform the comparison. As long as what is returned by the block is comparable, we can perform whatever transformation we need to within the block - including nesting other method calls within it.
#
# In this case, each time the top-level block is called, we call map on the sub-array for that iteration, within the map block we call to_i on each string within that particular sub-array, which returns a new array with integers and leaves the original sub-array unmodified. This ends up sorting the outer array by comparing the transformed integers in the inner arrays, which is what we're looking to do, without any side effects.
