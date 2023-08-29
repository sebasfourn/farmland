# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Farm.destroy_all
Product.destroy_all


Ail_Sherbrooke = Farm.create!(name: "Ail Sherbrooke", address: "", open: true, rating: 4.5)
Ferme_d_ORee = Farm.create!(name: "Ferme d'ORée", address: "", open: true, rating: 3.5)
Sanders_Farm = Farm.create!(name: "Sanders Farm", address: "", open: true, rating: 4.5)


tomato = Product.new(name: "tomato", category: "vegetable", unit: "kg", stock: 20, farm: Ail_Sherbrooke)
tomato.save!
