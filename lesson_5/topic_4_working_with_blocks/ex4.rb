my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end

# 18
# 7
# 12
# => [[18, 7], [3, 12]]

# Line 1
# Action: Assignment
# Object: my_arr variable
# Side Effect: No
# Return Value: ?
# Is Return Value Used? No

# Line 1
# Action: method call (each)
# Object: outer array
# Side Effect: None
# Return Value: the calling object (outer array)
# Is Return Value Used? Yes, used by the assignment operator

# Line 1-7
# Action: Block Execution
# Object: Each sub-array
# Side Effect: None
# Return Value:
# Is Return Value Used?
