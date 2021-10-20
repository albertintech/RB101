a = %w(a b c d e)
# puts a.fetch(7) # Error message: 7 is out of bounds
# puts a.fetch(7, 'beats me') # prevents error message. shows beats me instead
puts a.fetch(7) { |index| index**2 } # 49

# LS Discussion

# With this basic overview, we can tell that the first puts should print an error message; the second form returns the value of the default argument if the element doesn't exist; the third form returns the value returned by the block. So, the first puts raises an IndexError, the second prints beats me, while the third prints 49.
