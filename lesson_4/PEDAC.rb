# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

#################################################################

# input: string
# output: array with found palindrome substrings
# rules:
#       Explicit Requirements:
          # - Return every substring which is a palindrome.
          # - Case sensitive? Palindromes are case sensitive.
#
#       Implicit Requirements:
            # - Store substrings in an array
            # - Empty strings return an empty array
            # - Strings w/o palindromes return an empty array
