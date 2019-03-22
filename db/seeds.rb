trainers = [
  {name: 'Nike Air Max', price: 99.99},
  {name: 'Adidas 1', price: 10.00}
]

trainers.each do |trainer|
  Trainer.create(trainer)
end
