# Write a method that takes one argument, a sentence string, and returns an array of integers. The value of each integer in the array should be equal to the length of the word in the corresponding position in the sentence. For example, if the sentence was 'To be or not to be' the array of integers would be [2, 2, 2, 3, 2, 2].

def string_lengths(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

p string_lengths("To be or not to be")

# Returns [2, 2, 2, 3, 2, 2]
