# Write a method that takes one argument, a sentence string, and returns an array of integers. The value of each integer in the array should be equal to the length of the word in the corresponding position in the sentence. For example, if the sentence was 'To be or not to be' the array of integers would be [2, 2, 2, 3, 2, 2].

def string_lengths(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

p string_lengths("To be or not to be")

# Returns ["To", "be", "or", "not", "to", "be"]
