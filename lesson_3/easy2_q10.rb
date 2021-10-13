# Back in the stone age (before CSS) we used spaces to align things on the screen. If we had a table of Flintstone family members that was forty characters in width, how could we easily center that title above the table with spaces?

title = "Flintstone Family Members"

puts title

puts title.center(40, '*')

# Ruby docs: String#center

# center(width, padstr=' ') → new_strclick to toggle source

# Centers str in width. If width is greater than the length of str, returns a new String of length width with str centered and padded with padstr; otherwise, returns str.
