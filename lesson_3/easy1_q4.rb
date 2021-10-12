# The Ruby Array class has several methods for removing items from the array. Two of them have very similar names. Let's see how they differ:

numbers = [1, 2, 3, 4, 5]

# What do the following method calls do (assume we reset numbers to the original array between method calls)?

puts numbers.delete_at(1) # Deletes the element specified by the index and returns the element. In this case, 2 is at index 1 and is returned.
p numbers

numbers = [1, 2, 1, 3, 4, 5, 1]

puts numbers.delete(1) # Deletes all items equal to argument and return last deleted item, in this case, 1 is deleted and returned.
p numbers

# LS Note
# Another thing to notice is that while both of these methods operate on the contents of the referenced array and modify it in place (rather than just returning a modified version of the array) these methods do NOT have the usual ! at the end of the method name for "modify in place" method names.
