# Let's say we have the following data structure of nested arrays and we want to increment every number by 1 without changing the data structure.

[[[1, 2], [3, 4]], [5, 6]].map do |arr|
  arr.map do |el|
    if el.to_s.size == 1    # it's an integer
      el + 1
    else                    # it's an array
      el.map do |n|
        n + 1
      end
    end
  end
end

# => [[[2, 3], [4, 5]], [6, 7]]

# The tricky part about this example is that the original array has uneven nested levels. If we want to add 1 to each value we first need to find a way to access those values, regardless of how many arrays they're nested in. To do this, we determine if the current element is an array or an integer and then execute the appropriate code.

# map is a good choice for this task because it returns a new array containing transformed values. This way we can ultimately return a new array with the same nested levels as the original.

# In practice, this type of nested data processing is typically a sign of bad design. But if you ever find yourself in that situation, you should be confident in your ability to work through it.
