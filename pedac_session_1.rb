=begin
Given two strings, return the characters that are not common in the two strings.

# PROBLEM
Input: 2 strings
Output/Return: string - characters that are not common between the two strings

Questions:
- case-sensitivity
- what kind of characters are we dealing with? Only alphabetic?
- what do we do with empty input strings?
- spaces?
- what data structure does return value need to be?
- does order matter? what order should the characters be returned?
- what if there's more than one occurrence of the character?

Requirements:
- we only need to deal with lowercase alphabetic characters in the strings
- returning a string
- order matters with the returned string - unique characters in first string, followed by unique characters in second string
- don't need to worry about empty strings, special characters, spaces
- number of occurrences of a character is irrelevant when we're determining commonality
- order doesn't matter with input strings in terms of determining commonality
- method will be called `unique_string_characters`
- input strings can be of different lengths
- if all characters in common between the two strings, return an empty string

# EXAMPLES
p unique_string_characters("xyab","xzca") == "ybzc"
p unique_string_characters("a","z") == "az"
p unique_string_characters("abcd","de") == "abce"
p unique_string_characters("abc","abba") == "c"
p unique_string_characters("xyz","zxy") == ""

# DATA STRUCTURES
- Input: 2 strings
- Return value: 1 string
- array

https://app.coderpad.io/sandbox

# ALGORITHM

Fred:
**Algorithm**
- create an empty string `common_chars`
- Create an array  made up of the characters from string_1, `str_array_1`
- Create an array made of up of the characters from string_2 `str_array_2`
- Iterate over the characters in `str_array_1`
  - If the `str_array_2` includes the current character, and `common_chars` does not include this character, append the character to `common_chars`
- return `common_chars`

Matt:
break down each string into separate arrays
combine the arrays together into a single array
remove duplicate characters in the array
convert the array into a string


Albert:
Take first string and split into individual characters that fill an array
Take second string and split into individual characters that fill an array

Iterate through first array
Compare first character to each character in second array
If first character does not match any character in second array then add that character to a new string
Continue with...

Compare strings and for every character that does not match the other, add to new string.

David:
- Initialize an empty result array
- For each character in the first string
  - If that character is not in the second string
    - Add that character to the result array
- For each character in the second string
  - If that character is not in the first string
    - Add that character to the result array
- Join the result array to a string and return it.

OR

- Take difference of char array of first and second strings +
       difference of char array of second and first strings
- Join to string

Ethan:


First Edition:

Convert to arrays of singular characters
Initialize an array called "uncommon_characters"

For each char in str1 array:

If char is in str2 array:
If str2 array contains that char: Do nothing
Else: Append char onto new array

Repeat for str2 array

Join all characters in uncommon_characters and return


Given 2 strings "str1" and "str2":

SET str1_chars = split characters in str1
SET str2_chars = split characters in str2
SET uncommon_chars = []

FOR char in str1_chars:
    If char is not in str2 array: Append char onto uncommon_chars

FOR char in str2_chars:
    If char is not in str2 array: Append char onto uncommon_chars

RETURN join uncommon_characters with ""



- find the characters in the first string that aren't in the second string
- find the characters in the second string that aren't in the first string
- figure out how to store the characters
- combine all those characters together into one string

- accept two strings as arguments
- create an empty string to keep track of  resulting characters

- break down first string into individual characters
- look at each character
  - if the character  is not included in the second string
    - add it to the results string

- break down second string  into individual characters
- look at each character
  - if the character  is not included in the first string
    - add it to the results string

- return the final string

=end

def unique_string_characters(string_1, string_2)
  uncommon_characters = ''
  string_1.chars.each do |character|
    uncommon_characters << character unless string_2.include?(character)
  end
  string_2.chars.each do |character|
    uncommon_characters << character unless string_1.include?(character)
  end
  uncommon_characters
end

p unique_string_characters("xyab","xzca") == "ybzc"
p unique_string_characters("a","z") == "az"
p unique_string_characters("abcd","de") == "abce"
p unique_string_characters("abc","abba") == "c"
p unique_string_characters("xyz","zxy") == ""
