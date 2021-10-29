models_and_makers = {
  'Civic' => 'Honda',
  'Accord' => 'Honda',
  'Forte' => 'Kia',
  'Optima' => 'Kia'
}

models = models_and_makers.keys # puts each key, each car model, in an array
counter = 0
loop do
  break if counter >= models_and_makers.size
  current_model = models[counter]
  current_make = models_and_makers[current_model]
  puts "We have a #{current_make} #{current_model} in stock."
  counter += 1
end
