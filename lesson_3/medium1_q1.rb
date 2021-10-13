# Let's do some "ASCII Art" (a stone-age form of nerd artwork from back in the days before computers had video screens).
#
# For this practice problem, write a one-line program that creates the following output 10 times, with the subsequent line indented 1 space to the right:

# The Flintstones Rock!
#  The Flintstones Rock!
#   The Flintstones Rock!

  10.times { |i| puts (" " * i)+  "The Flinstones Rock!" }

# Integer#times in Ruby Docs:
# times {|i| block } → self
# times → an_enumerator
# Iterates the given block int times, passing in values from zero to int - 1.
#
# If no block is given, an Enumerator is returned instead.

# 5.times {|i| print i, " " }   #=> 0 1 2 3 4
