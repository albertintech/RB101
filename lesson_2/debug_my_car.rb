def car(new_car)
  make = make(new_car)
  model = model(new_car)
  [make, model]
end

def make(new_car)
  new_car.split(" ")[0]
end

def model(new_car)
  new_car.split(" ")[1] # The array assignment was originally [2] to create bug
end

make, model = car("Honda Civic")
p make == "Honda"
p model.start_with?("C")
