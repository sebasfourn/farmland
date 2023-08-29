# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Farm.destroy_all
Product.destroy_all


Ail_Sherbrooke = Farm.create!(name: "Ail Sherbrooke", address: "3336 chemin Bibeau
  Sherbrooke, QC", open: true, rating: 4.5)
Ferme_d_ORee = Farm.create!(name: "Ferme d'ORée", address: "273, chemin Beaver ridge
  Newport, QC", open: true, rating: 3.5)
Sanders_Farm = Farm.create!(name: "Sanders Farm", address: "475 Hyatt’s Mills, Compton, QC", open: true, rating: 4.5)


tomato = Product.new(name: "tomato", category: "vegetable", unit: "kg", stock: 20, farm: Ail_Sherbrooke)
tomato.save!

onion = Product.new(name: "onion", category: "vegetable", unit: "kg", stock: 40, farm: Ail_Sherbrooke)
onion.save!

turkey = Product.new(name: "turkey", category: "meat", unit: "kg", stock: 90, farm: Ail_Sherbrooke)
turkey.save!

carrot = Product.new(name: "carrot", category: "vegetable", unit: "kg", stock: 40, farm: Ail_Sherbrooke)
carrot.save!

pepper = Product.new(name: "pepper", category: "vegetable", unit: "kg", stock: 70, farm: Ail_Sherbrooke)
pepper.save!

poultry = Product.new(name: "poultry", category: "meat", unit: "kg", stock: 50, farm: Ail_Sherbrooke)
poultry.save!
