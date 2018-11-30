# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Users are being destroyed..."
User.destroy_all
puts "Users are destroyed!"
puts "Islands are being destroyed..."
Island.destroy_all
puts "Islands are destroyed!"

lily = User.create!(email: "lilyjo@gmail.com", password: "123456")
anna = User.create!(email: "annah@gmail.com", password: "123456")
nico = User.create!(email: "nichod@gmail.com", password: "123456")
helo = User.create!(email: "helog@gmail.com", password: "123456")


Island.create!(name: "Epsilon",price_per_night: 10000, number_of_guests: 15, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: lily, address: "martinique", default_photo:"https://www.alibabuy.com/photos/library/1500/10141.jpg")
Island.create!(name: "Saint-Pierre",price_per_night: 40000, number_of_guests: 6, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: anna, address: "bali", default_photo:"https://crowdink.com/wp-content/uploads/2017/02/best-resorts-bali.jpg")
Island.create!(name: "Isle of Venus",price_per_night: 30000, number_of_guests: 10, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user:nico, address: "la réunion", default_photo:"https://img.ev.mu/images/portfolio/pays/186/1605x1070/852235.jpg")
Island.create!(name: "Gara Island",price_per_night: 20000, number_of_guests: 20, description:"This magical island off the coast of the Turks and Caicos is an isolated gem. Surrounded by an incredible barrier reef, you can be sure to swim in the most idyllic waters in complete peace.", user: helo, address: "cuba", default_photo: "http://media.tdc.travel/tdc_media/tmp/new/1516051707.498.cuba-04.jpg")

