sentence = 'The sky was blue'


def camel(str)
  words = str.split(' ')
  counter = 0

  while counter < words.size # Error was here: original was >
    words[counter] = words[counter].capitalize

    counter = counter + 1
  end

  words.join
end

p camel(sentence) # => 'TheSkyWasBlue'
