# What is the return value of the following statement? Why?

['ant', 'bear', 'caterpillar'].pop.size

# => 11

# There are a couple things going on here. First, pop is being called on the array. pop destructively removes the last element from the calling array and returns it. Second, size is being called on the return value by pop. Once we realize that size is evaluating the return value of pop (which is "caterpillar") then the final return value of 11 should make sense.
