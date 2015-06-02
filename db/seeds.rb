# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Breed.create(breed: 'Australian Shepherd')
Breed.create(breed: 'Border Collie')
Breed.create(breed: 'Jack Russell')
Breed.create(breed: 'Pit Bull')
Breed.create(breed: 'Shih-tzu')
Breed.create(breed: 'Standard Poodle')
Breed.create(breed: 'Miniature Poodle')
Breed.create(breed: 'Doberman')
Breed.create(breed: 'Bulldog')
Breed.create(breed: 'Alaskan Malamute')
Breed.create(breed: 'Eskimo')
Breed.create(breed: 'Chihuahua')
Breed.create(breed: 'Yorkie')
Breed.create(breed: 'Boxer')
Breed.create(breed: 'Mutt')

Owner.create(first_name: "Sia", last_name: "Karamalegos", phone: "504-555-1212",
  emerg_name: "Gail Karamalegos", emerg_phone: "979-555-1212")
Owner.create(first_name: "Courtney", last_name: "Ordone", phone: "504-555-1212",
  emerg_name: "Carmen", emerg_phone: "504-555-1212")

Dog.create(name: "Priscilla", owner_id: 1, breed_id: 1, dob: Date.new(2011, 1, 8),
  vet: "Magazine Street Animal Clinic", in_daycare: true)
Dog.create(name: "Harry", owner_id: 1, breed_id: 3, dob: Date.new(2013, 2, 14),
  vet: "Magazine Street Animal Clinic", in_daycare: false)
Dog.create(name: "Nolte", owner_id: 2, breed_id: 5, dob: Date.new(2009, 2, 14),
  vet: "Magazine Street Animal Clinic", in_daycare: false)
Dog.create(name: "Flambeaux", owner_id: 2, breed_id: 4, dob: Date.new(2014, 2, 14),
  vet: "Magazine Street Animal Clinic", in_daycare: true)

categories = Category.create([{name: 'toys'}, {name: 'treats'},
  {name: 'food'}, {name: 'accessories'}])

products = Product.create([
    {name: "ProPlan Select Chicken and Rice", price: 43.99, quantity: 15, description: "Chicken is the number one ingredient in this adult dog food.", brand: "Purina", category_id: 3},
    {name: "Puppy Kong", price: 8.99, quantity: 10, description: "Softer and smaller Kong treat toy to help keep puppies occupied.", brand: "Kong", category_id: 1},
    {name: "Large Milk Bones", price: 10.99, quantity: 10, description: "Large dog biscuits that help keep your dog's teeth clean.", brand: "Milk Bone", category_id: 2},
    {name: "Freedom Harness, Large", price: 27.99, quantity: 5, description: "Tired of your dog taking you for a walk? Try this easy-on, easy-off harness.", brand: "Freedom Harness", category_id: 4}
  ])
