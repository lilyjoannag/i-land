# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
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

Epsilon = Island.create!(name: "Epsilon",price_per_night: 10000, number_of_guests: 15, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: lily, address: "Martinique", default_photo:"https://www.alibabuy.com/photos/library/1500/10141.jpg")
Saintpierre = Island.create!(name: "Saint-Pierre",price_per_night: 40000, number_of_guests: 6, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: anna, address: "Bali", default_photo:"https://www.alibabuy.com/photos/library/1500/10185.jpg")
Isleofvenus = Island.create!(name: "Isle of Venus",price_per_night: 30000, number_of_guests: 10, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user:nico, address: "La Réunion", default_photo:"https://img.ev.mu/images/portfolio/pays/186/1605x1070/852235.jpg")
Garaisland = Island.create!(name: "Gara Island",price_per_night: 20000, number_of_guests: 20, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: helo, address: "Cuba", default_photo: "http://media.tdc.travel/tdc_media/tmp/new/1516051707.498.cuba-04.jpg")
Saintbarth = Island.create!(name: "Saint-Barth",price_per_night: 90000, number_of_guests: 40, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: helo, address: "Antilles", default_photo: "https://www.gladdenprivateisland.com/wp-content/uploads/2018/01/20171012kvpbz00_gladden-spit-caye-1134.jpg")
Mnembaisland = Island.create!(name: "Mnemba Island",price_per_night: 420000, number_of_guests: 5, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: helo, address: "Zanzibar", default_photo: "https://www.privateislandsonline.com/uploads/resize/_2317_5be5ddd4e1545.jpg-1920-1480.jpg")

Booking.create!(island: Epsilon, user: nico, start_at: "2018-10-23", end_at: "2018-12-31", status: "pending")
Booking.create!(island: Saintpierre, user: lily, start_at: "2018-9-23", end_at: "2018-12-31", status: "pending")
Booking.create!(island: Isleofvenus, user: helo, start_at: "2018-8-23", end_at: "2018-12-31", status: "pending")
Booking.create!(island: Saintbarth, user: anna, start_at: "2018-12-23", end_at: "2018-12-31", status: "pending")
