# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning"
Speciality.destroy_all
puts "DB cleaned!"

puts "Creating specialties"
a = Speciality.create(name: "Light guns")
puts "#{a.name} created!"
b = Speciality.create(name: "Heavy guns")
puts "#{b.name} created!"
c = Speciality.create(name: "Knifes")
puts "#{c.name} created!"
d = Speciality.create(name: "Swords")
puts "#{d.name} created!"
e = Speciality.create(name: "Poison")
puts "#{e.name} created!"
f = Speciality.create(name: "Bare hands")
puts "#{f.name} created!"
g = Speciality.create(name: "Magic")
puts "#{g.name} created!"
h = Speciality.create(name: "Bows")
puts "#{h.name} created!"
i = Speciality.create(name: "Spears")
puts "#{i.name} created!"
j = Speciality.create(name: "Other")
puts "#{j.name} created!"

puts "Done!"
