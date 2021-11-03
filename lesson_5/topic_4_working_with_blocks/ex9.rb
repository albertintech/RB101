# This example contains a triple-level nested array. Take your time and try to break down each component. Hint: the top-level array is a 2-element array.

[[[1], [2], [3], [4]], [['a'], ['b'], ['c']]].map do |element1|
  element1.each do |element2|
    element2.partition do |element3|
      element3.size > 0
    end
  end
end
# => [[[1], [2], [3], [4]], [["a"], ["b"], ["c"]]]

# The key things to focus on with this example is understanding how each method works and the return value of the block. There are a total of 6 places where a return occurs: 3 methods (map, each, and partition) and 3 blocks (one for each method). By looking at the example, you should notice the first method call within map is each. If we understand each, we know that it doesn't care about the block's return value and it always returns the calling object. Therefore, just by looking at line 2, we can already say that the return value of map will be a new array that matches the value of the calling object. In this example, that's really all the interesting behavior there is as there are no side effects deeper in the code.
