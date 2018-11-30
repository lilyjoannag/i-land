# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Islands are being destroyed..."
Island.destroy_all
puts "Islands are destroyed!"
puts "Users are being destroyed..."
User.destroy_all
puts "Users are destroyed!"

lily = User.create!(email: "lilyjo@gmail.com", password: "123456")
anna = User.create!(email: "annah@gmail.com", password: "123456")
nico = User.create!(email: "nichod@gmail.com", password: "123456")
helo = User.create!(email: "helog@gmail.com", password: "123456")


Island.create!(name: "Epsilon",price_per_night: 10000, number_of_guests: 15, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: lily, address: "Martinique")
Island.create!(name: "Saint-Pierre",price_per_night: 40000, number_of_guests: 6, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: anna, address: "Bali")
Island.create!(name: "Isle of Venus",price_per_night: 30000, number_of_guests: 10, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user:nico, address: "La Réunion")
Island.create!(name: "Gara Island",price_per_night: 20000, number_of_guests: 20, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: helo, address: "Cuba")
Island.create!(name: "Saint-Barth",price_per_night: 90000, number_of_guests: 40, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: helo, address: "Antilles")
Island.create!(name: "Mnemba Island",price_per_night: 420000, number_of_guests: 5, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: helo, address: "Zanzibar")

Booking.create!(island_id: 1, user_id: 1, start_at: "2018-10-23", end_at: "2018-12-31")
Booking.create!(island_id: 2, user_id: 1, start_at: "2018-9-23", end_at: "2018-12-31")
Booking.create!(island_id: 2, user_id: 1, start_at: "2018-8-23", end_at: "2018-12-31")
Booking.create!(island_id: 3, user_id: 3, start_at: "2018-12-23", end_at: "2018-12-31")
