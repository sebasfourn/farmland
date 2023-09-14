# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts "deleting seeds"

Message.destroy_all
Trip.destroy_all
Farm.destroy_all
ProductInfo.destroy_all
Product.destroy_all
User.destroy_all

puts "creating users"

users = []

seb = User.create!(first_name: "seb", last_name: "fournier", email: "seb@email.com", password: "secret", address: "2810 Rue Beaudry, Sherbrooke, QC", driver: false, electric_car: true, verified: true)
therese = User.create!(first_name: "therese", last_name: "trudeau", email: "therese@email.com", password: "secret", address: "495 Rue Longpre, Sherbrooke, QC", driver: true, electric_car: false, verified: true)
jane = User.create!(first_name: "jane", last_name: "johnson", email: "jane@email.com", password: "secret", address: "2080 Rue Andre, Sherbrooke, QC", driver: true, electric_car: false, verified: true)
nicole = User.create!(first_name: "nicole", last_name: "naudin", email: "nicole@email.com", password: "secret", address: "814 Rue Fabien, Sherbrooke, QC", driver: true, electric_car: true, verified: true)
john = User.create!(first_name: "john", last_name: "cartier", email: "john@email.com", password: "secret", address: "510 Rue de l'Union, Sherbrooke, QC J1N 2X3", driver: true, verified: true)
jean = User.create!(first_name: "jean", last_name: "richards", email: "jean@email.com", password: "secret", address: "300 Rue du Conseil, Sherbrooke, QC", driver: true, electric_car: false, verified: true)
grace = User.create!(first_name: "grace", last_name: "jacobs", email: "grace@email.com", electric_car: true, password: "secret", address: "4400 Boul Bourque, Sherbrooke, QC", driver: true, verified: true)
audrey = User.create!(first_name: "audrey", last_name: "jefferson", email: "audrey@email.com", electric_car: false, password: "secret", address: "2070 Boulevard De Portland, Sherbrooke, Quebec", driver: true, verified: true)
tom = User.create!(first_name: "tom", last_name: "caulfield", email: "tom@email.com", password: "secret", address: "1010 Rue Fairmount, Sherbrooke, QC", driver: true, verified: true)
sergio = User.create!(first_name: "sergio", last_name: "deveraux", email: "sergio@email.com", electric_car: false, password: "secret", address: "375 Rue Argyll, Sherbrooke, QC", driver: true, verified: true)
priscilla = User.create!(first_name: "priscilla", last_name: "gifford", email: "priscilla@email.com", electric_car: true, password: "secret", address: "275 Rue Dufferin, Sherbrooke, QC", driver: true, verified: true)
joe = User.create!(first_name: "joe", last_name: "hampton", email: "joe@email.com", password: "secret", address: "4213 Rue Bertrand-Fabi, Sherbrooke, QC", driver: true, verified: true)
sebastien = User.create!(first_name: "sebastien", last_name: "jackson", email: "sebastien@email.com", electric_car: false, password: "secret", address: "4320 Boul Bourque, Sherbrooke, QC", driver: true, verified: true)
daphne = User.create!(first_name: "daphne", last_name: "lacey", email: "daphne@email.com", password: "secret", address: "1275 Rue Grégoire, Sherbrooke, QC", driver: true, verified: true)
frederic = User.create!(first_name: "frederic", last_name: "scott", email: "frederic@email.com", electric_car: false, password: "secret", address: "23 Rue Léger, Sherbrooke, QC", driver: true, verified: true)
marcella = User.create!(first_name: "marcella", last_name: "grande", email: "marcella@email.com", electric_car: true, password: "secret", address: "292 Rue Alexandre, Sherbrooke, QC", driver: true, verified: true)
kitty = User.create!(first_name: "kitty", last_name: "schmitt", email: "kitty@email.com", electric_car: true, password: "secret", address: "1028 Rue Veronique, Sherbrooke, QC", driver: true, verified: true)
justin = User.create!(first_name: "justin", last_name: "cruz", email: "justin@email.com", password: "secret", address: "5181 Boul Bourque, Sherbrooke, QC", driver: true, verified: true)
manon = User.create!(first_name: "manon", last_name: "thomson", email: "manon@email.com", electric_car: true, password: "secret", address: "3800 Bd de Monseigneur-Fortier, Sherbrooke, QC", driver: true, verified: true)
ines = User.create!(first_name: "ines", last_name: "robbie", email: "ines@email.com", electric_car: false, password: "secret", address: "585 Rue Murray, Sherbrooke, QC", driver: true, verified: true)
christophe = User.create!(first_name: "christophe", last_name: "reinhardt", email: "christophe@email.com", electric_car: true, password: "secret", address: "Sherbrooke, 40e Avenue, Montréal, QC", driver: true, verified: true)

users << nicole
users << seb
users << therese
users << jane
users << grace
users << audrey
users << tom
users << sergio
users << priscilla
users << joe
users << sebastien
users << daphne
users << frederic
users << marcella
users << kitty
users << justin
users << manon
users << ines
users << christophe

puts "creating farms"

farms = []

ferme_bibeau = Farm.create!(name: "Ferme Bibeau", address: "3336 Chemin Bibeau, Sherbrooke, QC", open: true, grass_fed: true, rating: 3.0, opening_time: 10, closing_time: 24, description: "Ferme Bibeau covers 95 hectares, of which 65 are cultivated and 30 are wooded. There is also an elderberry orchard with an area of one hectare.")
ferme_d_oree = Farm.create!(name: "Ferme d'Oree", address: "273, Chemin Beaver ridge, Newport, QC", open: false, rating: 3.5, opening_time: 9, closing_time: 14, grass_fed: true, description: "We produce grass-fed beef, pastured pork, lamb, eggs, and unpasteurized honey and sell directly to the consumer and through specialized butchers.")
sanders_farm = Farm.create!(name: "Sanders Farm", address: "475 Hyatt's Mills, Compton, QC", open: true, rating: 3.5, opening_time: 9, closing_time: 15, grass_fed: true, description: "Sanders farm is a family-run, organic fruit and vegetable farm, that also specializes in grass-fed meat, and it is nestled in the beautiful rolling hills of Compton since 1974.")
topher_farm = Farm.create!(name: "Topher Farm", address: "6160 rte 143, Waterville, QC", open: true, rating: 4.5, opening_time: 11, closing_time: 17, description: "Topher's Farm in Canada is a thriving agricultural enterprise, known for its diverse range of farm-fresh products that consistently deliver exceptional taste and freshness to customers.")
poucevert_farm = Farm.create!(name: "Les 3 pouces Verts", address: "525 Chemin Chute, Cookshire-Eaton, QC", open: false, rating: 5, opening_time: 7, closing_time: 18, description: "We are a cherished family-owned eco-conscious farm. With a rich agricultural tradition, they offer an array of natural produce, from luscious apples to vibrant vegetables. Visitors can savor fresh, locally grown delights while experiencing the beauty of sustainable farming practices.")
sevigny_farm = Farm.create!(name: "Sevigny Farm", address: "291 Chemin de la Rivière, Saint-François-Xavier-de-Brompton, QC", open: true, rating: 4.8, opening_time: 8, closing_time: 15, description: "We are proud to produce all our fruits in a 100% natural manner. We started over 40 years ago with apples and have since added blueberries, raspberries, strawberries, and currants.")
grange_maraichere = Farm.create!(name: "Ferme la grange Maraichere", address: "1595 Chemin des Pères, Magog, QC", open: true, rating: 4, opening_time: 7, closing_time: 20, description: "Nestled in Magog, Estrie, along the scenic Chemin des Pères tourist route, Ferme Erb is a diversified vegetable farm. They provide a wide array of naturally grown vegetables, striving to offer fresh seasonal products while sharing their deep passion for agriculture.")
la_prucheraie = Farm.create!(name: "La Prucheraie", address: "974 Chemin Arel, Melbourne, QC", open: true, rating: 4, opening_time: 10, closing_time: 19, description: "Founded in 1989 by Robert Beaulieu and Joanne Marcil, the farm has been certified organic since 1990, ensuring the organic quality of all its products.")
la_vallee_des_lacs_farm = Farm.create!(name: "La Vallee des Lacs", address: "162 Chemin Georges-Vallières, Sherbrooke, QC", open: true, rating: 5, opening_time: 9, closing_time: 15, description: "Ferme La Vallée des Lacs in Quebec is a charming farm nestled amidst scenic lakes and valleys, committed to producing fresh, local delights.")
croque_saisons = Farm.create!(name: "Croque Saisons", address: "111 Route 108 Lingwick, QC", open: true, rating: 4.6, opening_time: 8, closing_time: 17, description: "Croque-Saisons Farm, founded by two agronomists in the Eastern Townships, encompasses 80 acres of land, featuring 10 acres of organic vegetable cultivation, fruit production, and pasture-raised cattle, all driven by their passion for sustainable agriculture.")

farms << ferme_bibeau
farms << ferme_d_oree
farms << sanders_farm
farms << topher_farm
farms << poucevert_farm
farms << sevigny_farm
farms << grange_maraichere
farms << la_prucheraie
farms << la_vallee_des_lacs_farm
farms << croque_saisons

puts "creating products"

# may
asparagus = ProductInfo.create!(name: "asparagus", category: "vegetable", month: 5, co2_saved: 0.675)

# june
radish = ProductInfo.create!(name: "radish", category: "vegetable", month: 6, co2_saved: 0.431)
spinach = ProductInfo.create!(name: "spinach", category: "vegetable", month: 6, co2_saved: 0.738)
strawberry = ProductInfo.create!(name: "strawberry", category: "fruit", month: 6, co2_saved: 1.170)
lettuce = ProductInfo.create!(name: "lettuce", category: "vegetable", month: 6, co2_saved: 0.389)
green_onion = ProductInfo.create!(name: "green onion", category: "vegetable", month: 6, co2_saved: 0.281)
herb = ProductInfo.create!(name: "coriander", category: "vegetable", month: 6, co2_saved: 0.938)
rhubarb = ProductInfo.create!(name: "rhubarb", category: "fruit", month: 6, co2_saved: 0.102)

# july
raspberry = ProductInfo.create!(name: "raspberry", category: "fruit", month: 7, co2_saved: 1.470)
broccoli = ProductInfo.create!(name: "broccoli", category: "vegetable", month: 7, co2_saved: 0.235)
zucchini = ProductInfo.create!(name: "zucchini", category: "vegetable", month: 7, co2_saved: 0.25)
beet = ProductInfo.create!(name: "beet", category: "vegetable", month: 7, co2_saved: 0.558)
kale = ProductInfo.create!(name: "kale", category: "vegetable", month: 7, co2_saved: 0.438)

# august
carrot = ProductInfo.create!(name: "carrot", category: "vegetable", month: 8, co2_saved: 0.259)
blueberry = ProductInfo.create!(name: "blueberry", category: "fruit", month: 8, co2_saved: 1.74)
tomato = ProductInfo.create!(name: "tomato", category: "vegetable", month: 8, co2_saved: 0.998)
bean = ProductInfo.create!(name: "bean", category: "vegetable", month: 8, co2_saved: 0.664)
leek = ProductInfo.create!(name: "leek", category: "vegetable", month: 8, co2_saved: 0.2875)
eggplant = ProductInfo.create!(name: "eggplant", category: "vegetable", month: 8, co2_saved: 0.294)

# september
apple = ProductInfo.create!(name: "apple", category: "fruit", month: 9, co2_saved: 0.228)
pepper = ProductInfo.create!(name: "pepper", category: "vegetable", month: 9, co2_saved: 1.64)
cantaloupe = ProductInfo.create!(name: "cantaloupe", category: "fruit", month: 9, co2_saved: 0.438)

# october
sweet_potato = ProductInfo.create!(name: "sweet potato", category: "vegetable", month: 10, co2_saved: 0.558)
squash = ProductInfo.create!(name: "squash", category: "vegetable", month: 10, co2_saved: 0.45)
turnip = ProductInfo.create!(name: "turnip", category: "vegetable", month: 10, co2_saved: 0.268)

# meat
chicken_breast = ProductInfo.create!(name: "chicken breast", category: "meat", month: 12, co2_saved: 2.37)
ground_turkey = ProductInfo.create!(name: "ground turkey", category: "meat", month: 12, co2_saved: 0.6)
ground_pork = ProductInfo.create!(name: "ground pork", category: "meat", co2_saved: 1.21)
ground_beef = ProductInfo.create!(name: "ground beef", category: "meat", month: 12, co2_saved: 3.246)

puts "adding products to farms"

# Ferme Bibeau
Product.create!(farm: ferme_bibeau, product_info: ground_beef, unit: "kg", stock: 40, price: 8.99)
Product.create!(farm: ferme_bibeau, product_info: chicken_breast, unit: "kg", stock: 40, price: 6.50)
Product.create!(farm: ferme_bibeau, product_info: asparagus, unit: "kg", stock: 20, price: 5.99)
Product.create!(farm: ferme_bibeau, product_info: carrot, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: ferme_bibeau, product_info: bean, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: ferme_bibeau, product_info: eggplant, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: ferme_bibeau, product_info: zucchini, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: ferme_bibeau, product_info: kale, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: ferme_bibeau, product_info: broccoli, unit: "kg", stock: 40, price: 2.50)

# Ferme d'Oree
Product.create!(farm: ferme_d_oree, product_info: ground_turkey, unit: "kg", stock: 40, price: 7.25)
Product.create!(farm: ferme_d_oree, product_info: ground_beef, unit: "kg", stock: 40, price: 8.99)
Product.create!(farm: ferme_d_oree, product_info: ground_pork, unit: "kg", stock: 40, price: 7.75)
Product.create!(farm: ferme_d_oree, product_info: sweet_potato, unit: "kg", stock: 40, price: 4.25)
Product.create!(farm: ferme_d_oree, product_info: carrot, unit: "kg", stock: 40, price: 2.75)

# Sanders Farm
Product.create!(farm: sanders_farm, product_info: radish, unit: "kg", stock: 40, price: 3.99)
Product.create!(farm: sanders_farm, product_info: pepper, unit: "kg", stock: 40, price: 4.99)
Product.create!(farm: sanders_farm, product_info: apple, unit: "kg", stock: 40, price: 4.75)
Product.create!(farm: sanders_farm, product_info: blueberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: sanders_farm, product_info: strawberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: sanders_farm, product_info: cantaloupe, unit: "kg", stock: 40, price: 4.99)
Product.create!(farm: sanders_farm, product_info: ground_beef, unit: "kg", stock: 40, price: 8.50)

# Topher
Product.create!(farm: topher_farm, product_info: radish, unit: "kg", stock: 40, price: 3.99)
Product.create!(farm: topher_farm, product_info: turnip, unit: "kg", stock: 40, price: 3.25)
Product.create!(farm: topher_farm, product_info: apple, unit: "kg", stock: 40, price: 4.75)
Product.create!(farm: topher_farm, product_info: kale, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: topher_farm, product_info: strawberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: topher_farm, product_info: broccoli, unit: "kg", stock: 40, price: 4.99)

# Pouce Vert
Product.create!(farm: poucevert_farm, product_info: radish, unit: "kg", stock: 40, price: 3.99)
Product.create!(farm: poucevert_farm, product_info: pepper, unit: "kg", stock: 40, price: 4.99)
Product.create!(farm: poucevert_farm, product_info: apple, unit: "kg", stock: 40, price: 4.75)
Product.create!(farm: poucevert_farm, product_info: blueberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: poucevert_farm, product_info: strawberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: poucevert_farm, product_info: cantaloupe, unit: "kg", stock: 40, price: 4.99)

# Sevigny Farm
Product.create!(farm: sevigny_farm, product_info: strawberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: sevigny_farm, product_info: raspberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: sevigny_farm, product_info: blueberry, unit: "kg", stock: 40, price: 5.50)
Product.create!(farm: sevigny_farm, product_info: pepper, unit: "kg", stock: 40, price: 4.99)
Product.create!(farm: sevigny_farm, product_info: zucchini, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: sevigny_farm, product_info: asparagus, unit: "kg", stock: 40, price: 5.99)

# Grande Maraichere
Product.create!(farm: grange_maraichere, product_info: radish, unit: "kg", stock: 40, price: 3.99)
Product.create!(farm: grange_maraichere, product_info: pepper, unit: "kg", stock: 40, price: 4.99)
Product.create!(farm: grange_maraichere, product_info: bean, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: grange_maraichere, product_info: eggplant, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: grange_maraichere, product_info: zucchini, unit: "kg", stock: 40, price: 2.50)

# La Prucheraie
Product.create!(farm: la_prucheraie, product_info: ground_pork, unit: "kg", stock: 40, price: 7.75)
Product.create!(farm: la_prucheraie, product_info: ground_beef, unit: "kg", stock: 40, price: 8.50)
Product.create!(farm: la_prucheraie, product_info: ground_turkey, unit: "kg", stock: 40, price: 6.75)
Product.create!(farm: la_prucheraie, product_info: sweet_potato, unit: "kg", stock: 40, price: 4.25)
Product.create!(farm: la_prucheraie, product_info: carrot, unit: "kg", stock: 40, price: 2.75)
Product.create!(farm: la_prucheraie, product_info: cantaloupe, unit: "kg", stock: 40, price: 4.99)

# La Vallee des Lacs
Product.create!(farm: la_vallee_des_lacs_farm, product_info: eggplant, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: la_vallee_des_lacs_farm, product_info: zucchini, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: la_vallee_des_lacs_farm, product_info: kale, unit: "kg", stock: 40, price: 2.50)
Product.create!(farm: la_vallee_des_lacs_farm, product_info: blueberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: la_vallee_des_lacs_farm, product_info: strawberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: la_vallee_des_lacs_farm, product_info: cantaloupe, unit: "kg", stock: 40, price: 4.99)

# Croque Saisons
Product.create!(farm: croque_saisons, product_info: ground_beef, unit: "kg", stock: 40, price: 8.50)
Product.create!(farm: croque_saisons, product_info: chicken_breast, unit: "kg", stock: 40, price: 6.50)
Product.create!(farm: croque_saisons, product_info: radish, unit: "kg", stock: 40, price: 3.99)
Product.create!(farm: croque_saisons, product_info: pepper, unit: "kg", stock: 40, price: 4.99)
Product.create!(farm: croque_saisons, product_info: apple, unit: "kg", stock: 40, price: 4.75)
Product.create!(farm: croque_saisons, product_info: blueberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: croque_saisons, product_info: strawberry, unit: "kg", stock: 40, price: 5.99)
Product.create!(farm: croque_saisons, product_info: cantaloupe, unit: "kg", stock: 40, price: 4.99)

puts "creating trips"

# Bibeau Trips
trip_one = Trip.create!(date: DateTime.new(2023,9,15,17,0,0), seat: 3, user: jane, farm: ferme_bibeau, address: jane.address)
trip_two = Trip.create!(date: DateTime.new(2023,9,25,16,0,0), seat: 3, user: nicole, farm: ferme_bibeau, address: nicole.address)

# Ferme d'Oree Trips
trip_three = Trip.create!(date: DateTime.new(2023,9,12,12,0,0), seat: 5, user: therese, farm: ferme_d_oree, address: therese.address)
trip_four = Trip.create!(date: DateTime.new(2023,9,14,16,0,0), seat: 3, user: nicole, farm: ferme_d_oree, address: nicole.address)

# Sanders Farm Trips
trip_five = Trip.create!(date: DateTime.new(2023,9,13,12,0,0), seat: 5, user: jane, farm: sanders_farm, address: jane.address)
trip_six = Trip.create!(date: DateTime.new(2023,9,18,12,0,0), seat: 5, user: nicole, farm: sanders_farm, address: nicole.address)
trip_seven = Trip.create!(date: DateTime.new(2023,9,23,16,0,0), seat: 3, user: therese, farm: sanders_farm, address: therese.address)

# Topher trips
jean_trip = Trip.create!(date: DateTime.new(2023,9,20,11,0,0), seat: 3, user: jean, farm: topher_farm, address: jean.address)
demo_trip = Trip.create!(date: DateTime.new(2023,9,23,17,0,0), seat: 1, user: grace, farm: topher_farm, address: grace.address)
john_trip = Trip.create!(date: DateTime.new(2023,10,2,12,0,0), seat: 5, user: john, farm: topher_farm, address: john.address)

# Pouce Vert trips
trip_thirteen = Trip.create!(date: DateTime.new(2023,9,13,11,0,0), seat: 2, user: audrey, farm: poucevert_farm, address: audrey.address)
trip_fourteen = Trip.create!(date: DateTime.new(2023,9,15,15,0,0), seat: 2, user: tom, farm: poucevert_farm, address: tom.address)
trip_fifteen = Trip.create!(date: DateTime.new(2023,9,19,9,0,0), seat: 2, user: sergio, farm: poucevert_farm, address: sergio.address)
trip_sixteen = Trip.create!(date: DateTime.new(2023,9,30,15,0,0), seat: 1, user: tom, farm: poucevert_farm, address: tom.address)

# Sevigny Trips
trip_seventeen = Trip.create!(date: DateTime.new(2023,9,15,13,0,0), seat: 2, user: sergio, farm: sevigny_farm, address: sergio.address)
trip_eighteen = Trip.create!(date: DateTime.new(2023,9,21,13,0,0), seat: 3, user: priscilla, farm: sevigny_farm, address: priscilla.address)
trip_nineteen = Trip.create!(date: DateTime.new(2023,9,24,11,0,0), seat: 2, user: joe, farm: sevigny_farm, address: joe.address)

# Maraichere Trips
trip_twenty = Trip.create!(date: DateTime.new(2023,9,9,12,0,0), seat: 3, user: sebastien, farm: grange_maraichere, address: sebastien.address)
trip_twentyone = Trip.create!(date: DateTime.new(2023,9,14,16,0,0), seat: 1, user: daphne, farm: grange_maraichere, address: daphne.address)
trip_twentytwo = Trip.create!(date: DateTime.new(2023,9,19,16,0,0), seat: 2, user: daphne, farm: grange_maraichere, address: tom.address)

# Prucheraie Trips
trip_twentythree = Trip.create!(date: DateTime.new(2023,9,10,16,0,0), seat: 3, user: frederic, farm: la_prucheraie, address: frederic.address)
trip_twentyfour = Trip.create!(date: DateTime.new(2023,9,19,16,0,0), seat: 1, user: marcella, farm: la_prucheraie, address: marcella.address)
trip_twentyfive = Trip.create!(date: DateTime.new(2023,9,20,10,0,0), seat: 3, user: kitty, farm: la_prucheraie,address: kitty.address)

# Lacs Trips
trip_twentysix = Trip.create!(date: DateTime.new(2023,9,11,8,0,0), seat: 2, user: justin, farm: la_vallee_des_lacs_farm, address: justin.address)
trip_twentyseven = Trip.create!(date: DateTime.new(2023,9,12,8,0,0), seat: 3, user: manon, farm: la_vallee_des_lacs_farm, address: manon.address)

# Saisons Trips
trip_twentyeight = Trip.create!(date: DateTime.new(2023,9,9,9,0,0), seat: 2, user: ines, farm: croque_saisons, address: ines.address)
trip_twentynine = Trip.create!(date: DateTime.new(2023,9,10,11,0,0), seat: 2, user: daphne, farm: croque_saisons, address: daphne.address)

Order.create!(user: jane, trip: trip_one)
Order.create!(user: nicole, trip: trip_two)
Order.create!(user: therese, trip: trip_three)
Order.create!(user: nicole, trip: trip_four)
Order.create!(user: jane, trip: trip_five)
Order.create!(user: nicole, trip: trip_six)
Order.create!(user: therese, trip: trip_seven)
Order.create!(user: jean, trip: jean_trip)
Order.create!(user: grace, trip: demo_trip)
Order.create!(user: john, trip: john_trip)
Order.create!(user: audrey, trip: trip_thirteen)
Order.create!(user: tom, trip: trip_fourteen)
Order.create!(user: sergio, trip: trip_fifteen)
Order.create!(user: tom, trip: trip_sixteen)
Order.create!(user: sergio, trip: trip_seventeen)
Order.create!(user: priscilla, trip: trip_eighteen)
Order.create!(user: joe, trip: trip_nineteen)
Order.create!(user: sebastien, trip: trip_twenty)
Order.create!(user: daphne, trip: trip_twentyone)
Order.create!(user: daphne, trip: trip_twentytwo)
Order.create!(user: frederic, trip: trip_twentythree)
Order.create!(user: marcella, trip: trip_twentyfour)
Order.create!(user: kitty, trip: trip_twentyfive)
Order.create!(user: justin, trip: trip_twentysix)
Order.create!(user: manon, trip: trip_twentyseven)
Order.create!(user: ines, trip: trip_twentyeight)
Order.create!(user: daphne, trip: trip_twentynine)
