# Amend this array so that the names are all shortened to just the first three characters:

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# LS Solution

flintstones.map! do |name|
  name[0, 3]
end

# Alternate LS Solution

flintstones.map! { |name| name[0,3] }
