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

Owner.create(first_name: "Sia", last_name: "Karamalegos", phone: "504-555-1212", emerg_name: "Gail Karamalegos", emerg_phone: "979-555-1212")

Dog.create(name: "Priscilla", owner_id: 1, breed_id: 1, dob: Date.new(2011, 1, 8), vet: "Magazine Street Animal Clinic", in_daycare: true)
Dog.create(name: "Harry", owner_id: 1, breed_id: 3, dob: Date.new(2013, 2, 14), vet: "Magazine Street Animal Clinic", in_daycare: false)
