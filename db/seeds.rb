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
sebastien = User.create!(first_name: "sebastien", last_name: "fournier", email: "seb@email.com", password: "secret", address: "2810 Rue Beaudry, Sherbrooke, QC J1L 2N6", driver: true, electric_car: true)
therese = User.create!(first_name: "therese", last_name: "trudeau", email: "therese@email.com", password: "secret", address: "495 Rue Longpre, Sherbrooke, QC J1G 4C4", driver: false)
jane = User.create!(first_name: "jane", last_name: "johnson", email: "jane@email.com", password: "secret", address: "2080 Rue Andre, Sherbrooke, QC J1H 6G8", driver: true, electric_car: true)
nicole = User.create!(first_name: "nicole", last_name: "naudin", email: "nicole@email.com", password: "secret", address: "814 Rue Fabien, Sherbrooke, QC J1N 2J8", driver: false)
users << sebastien
users << therese
users << jane
users << nicole

farms = []

ferme_bibeau = Farm.create!(name: "Ferme Bibeau", address: "3336 Chemin Bibeau
  Sherbrooke, QC", open: true, rating: 4.5, description: "Ferme Bibeau covers 95 hectares, of which 65 are cultivated and 30 are wooded. There is also an elderberry orchard with an area of one hectare. Within the 65 cultivated hectares, measures to protect biodiversity have been put in place, particularly with regard to the protection of rural birds. The 30 hectares of forest are intended for the integral conservation of the natural environment.")
ferme_d_oree = Farm.create!(name: "Ferme d'Orée", address: "273, Chemin Beaver ridge
  Newport, QC", open: true, rating: 3.5, description: "We produce grass-fed beef, pastured pork, lamb, eggs, and unpasteurized honey and sell directly to the consumer and through specialized butchers.")
sanders_farm = Farm.create!(name: "Sanders Farm", address: "475 Hyatt's Mills, Compton, QC", open: true, rating: 4.5, description: "Sanders farm is a family-run, organic fruit and vegetable farm, nestled in the beautiful rolling hills of Compton, in Quebec’s Eastern Townships since 1974.")

farms << ferme_bibeau
farms << ferme_d_oree
farms << sanders_farm

tomato_photo = URI.open("https://th.bing.com/th/id/OIG._o3h2oVb035wj82ZFwSr?pid=ImgGn")
tomato = Product.new(name: "tomato", category: "vegetable", unit: "kg", stock: 20, farm: ferme_bibeau, price: 5.51)
tomato.photo.attach(io: tomato_photo, filename: 'tomato.jpg', content_type: 'image/jpeg')
tomato.save!

onion_photo = URI.open("https://th.bing.com/th/id/OIG.7hsSKMRE04pZ273BG4mI?pid=ImgGn")
onion = Product.new(name: "onion", category: "vegetable", unit: "kg", stock: 40, farm: ferme_d_oree, price: 4.01)
onion.photo.attach(io: onion_photo, filename: 'onion.jpg', content_type: 'image/jpeg')
onion.save!

turkey = Product.new(name: "turkey", category: "meat", unit: "kg", stock: 90, farm: sanders_farm, price: 7.25)
turkey.save!

carrot = Product.new(name: "carrot", category: "vegetable", unit: "kg", stock: 40, farm: ferme_bibeau, price: 2.63)
carrot.save!

pepper = Product.new(name: "pepper", category: "vegetable", unit: "kg", stock: 70, farm: ferme_d_oree, price: 6.11)
pepper.save!

poultry = Product.new(name: "poultry", category: "meat", unit: "kg", stock: 50, farm: sanders_farm, price: 7.30)
poultry.save!

trips = []

trip_one = Trip.new(date: DateTime.new(2023,9,15,17,0,0), seat: 3, user: users[0], farm: farms[0], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_one.save!
trips << trip_one

trip_two = Trip.new(date: DateTime.new(2023,8,31,16,0,0), seat: 3, user: users[2], farm: farms[1], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_two.save!
trips << trip_two

trip_three = Trip.new(date: DateTime.new(2023,9,15,12,0,0), seat: 5, user: users[0],  farm: farms[2], address: "3050 Boulevard De Portland, Sherbrooke, Quebec J1L 1K1")
trip_three.save!
trips << trip_three

seb_order = Order.new(trip: trip_one, user: sebastien)
seb_order.save!

therese_order = Order.new(trip: trip_two, user: therese)
therese_order.save!

seb_poultry = OrderProduct.new(quantity: 10, order: seb_order, product: poultry)
seb_poultry.cost = seb_poultry.quantity * seb_poultry.product.price
seb_poultry.save!

seb_pepper = OrderProduct.new(quantity: 4, order: seb_order, product: pepper)
seb_pepper.cost = seb_pepper.quantity * seb_pepper.product.price
seb_pepper.save!

therese_turkey = OrderProduct.new(quantity: 12, order: therese_order, product: turkey)
therese_turkey.cost = therese_turkey.quantity * therese_turkey.product.price
therese_turkey.save!

therese_carrot = OrderProduct.new(quantity: 3, order: therese_order, product: carrot)
therese_carrot.cost = therese_carrot.quantity * therese_carrot.product.price
therese_carrot.save!
