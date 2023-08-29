# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Trip.destroy_all
Farm.destroy_all
Product.destroy_all
User.destroy_all


users = []
users << User.create!(first_name: "sebastien", last_name: "fournier", email: "seb@email.com", password: "secret", address: "2810 Rue Beaudry, Sherbrooke, QC J1L 2N6", driver: true )
users << User.create!(first_name: "therese", last_name: "trudeau", email: "therese@email.com", password: "secret", address: "495 Rue Longpre, Sherbrooke, QC J1G 4C4", driver: false)
users << User.create!(first_name: "jane", last_name: "johnson", email: "jane@email.com", password: "secret", address: "2080 Rue Andre, Sherbrooke, QC J1H 6G8", driver: true)
users << User.create!(first_name: "nicole", last_name: "naudin", email: "nicole@email.com", password: "secret", address: "814 Rue Fabien, Sherbrooke, QC J1N 2J8", driver: false)

farms = []

Ail_Sherbrooke = Farm.create!(name: "Ail Sherbrooke", address: "3336 Chemin Bibeau
  Sherbrooke, QC", open: true, rating: 4.5)
Ferme_d_ORee = Farm.create!(name: "Ferme d'ORée", address: "273, Chemin Beaver ridge
  Newport, QC", open: true, rating: 3.5)
Sanders_Farm = Farm.create!(name: "Sanders Farm", address: "475 Hyatt’s Mills, Compton, QC", open: true, rating: 4.5)

farms << Ail_Sherbrooke
farms << Ferme_d_ORee
farms << Sanders_Farm

tomato_photo = URI.open("https://th.bing.com/th/id/OIG._o3h2oVb035wj82ZFwSr?pid=ImgGn")
tomato = Product.new(name: "tomato", category: "vegetable", unit: "kg", stock: 20, farm: Ail_Sherbrooke)
tomato.photo.attach(io: tomato_photo, filename: 'tomato.jpg', content_type: 'image/jpeg')
tomato.save!

onion_photo = URI.open("https://th.bing.com/th/id/OIG.7hsSKMRE04pZ273BG4mI?pid=ImgGn")
onion = Product.new(name: "onion", category: "vegetable", unit: "kg", stock: 40, farm: Ferme_d_ORee)
onion.photo.attach(io: onion_photo, filename: 'onion.jpg', content_type: 'image/jpeg')
onion.save!

turkey = Product.new(name: "turkey", category: "meat", unit: "kg", stock: 90, farm: Sanders_Farm)
turkey.save!

carrot = Product.new(name: "carrot", category: "vegetable", unit: "kg", stock: 40, farm: Ail_Sherbrooke)
carrot.save!

pepper = Product.new(name: "pepper", category: "vegetable", unit: "kg", stock: 70, farm: Ferme_d_ORee)
pepper.save!

poultry = Product.new(name: "poultry", category: "meat", unit: "kg", stock: 50, farm: Sanders_Farm)
poultry.save!


trip_one = Trip.new(date: DateTime.new(2023,9,12,17,0,0), seat: 3, user: users[0], farm: farms[0], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_one.save!

trip_two = Trip.new(date: DateTime.new(2023,9,14,10,0,0), seat: 3, user: users[2], farm: farms[1], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_two.save!

trip_three = Trip.new(date: DateTime.new(2023,9,15,12,0,0), seat: 5, user: users[0],  farm: farms[2], address: "3050 Boulevard De Portland, Sherbrooke, Quebec J1L 1K1")
trip_three.save!
