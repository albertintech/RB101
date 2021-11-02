[{ a: 'ant', b: 'elephant' }, { c: 'cat' }].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end
# => [{ :c => "cat" }]

# LS Solution:
# The first thing to notice here is the use of the all? method within the select block. Since #select specifically cares about the truthiness of the block's return value, using a method that returns a boolean works well. all? will return true if the block passed to it never returns a value of false or nil for every key/value pair in the hash. We're using value[0] == key.to_s to test whether all keys match the first letter of all their associated values. Note that the only hash that meets this criteria is {:c => 'cat'}, and the return value is an array.
