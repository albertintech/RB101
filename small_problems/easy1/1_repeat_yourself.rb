# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)

# Output:

# Hello
# Hello
# Hello

def repeat(string, reps)
  reps.times do
    puts string
  end
end

repeat('Hello', 3)
