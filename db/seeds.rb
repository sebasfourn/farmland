# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

Message.destroy_all
Trip.destroy_all
Farm.destroy_all
ProductInfo.destroy_all
Product.destroy_all
User.destroy_all

users = []

seb = User.create!(first_name: "seb", last_name: "fournier", email: "seb@email.com", password: "secret", address: "2810 Rue Beaudry, Sherbrooke, QC", driver: true, electric_car: true, verified: true)
therese = User.create!(first_name: "therese", last_name: "trudeau", email: "therese@email.com", password: "secret", address: "495 Rue Longpre, Sherbrooke, QC", driver: false, verified: true)
jane = User.create!(first_name: "jane", last_name: "johnson", email: "jane@email.com", password: "secret", address: "2080 Rue Andre, Sherbrooke, QC", driver: true, electric_car: true, verified: true)
nicole = User.create!(first_name: "nicole", last_name: "naudin", email: "nicole@email.com", password: "secret", address: "814 Rue Fabien, Sherbrooke, QC", driver: false, verified: true)
users << seb
users << therese
users << jane
users << nicole

farms = []

ferme_bibeau = Farm.create!(name: "Ferme Bibeau", address: "3336 Chemin Bibeau
  Sherbrooke, QC", open: true, rating: 4.5, opening_time: 10, closing_time: 24, description: "Ferme Bibeau covers 95 hectares, of which 65 are cultivated and 30 are wooded. There is also an elderberry orchard with an area of one hectare.")
ferme_d_oree = Farm.create!(name: "Ferme d'Orée", address: "273, Chemin Beaver ridge
  Newport, QC", open: false, rating: 3.5, opening_time: 9, closing_time: 14, description: "We produce grass-fed beef, pastured pork, lamb, eggs, and unpasteurized honey and sell directly to the consumer and through specialized butchers.")
sanders_farm = Farm.create!(name: "Sanders Farm", address: "475 Hyatt's Mills
  Compton, QC", open: true, rating: 4.5, opening_time: 9, closing_time: 15, grass_fed: true, description: "Sanders farm is a family-run, organic fruit and vegetable farm, nestled in the beautiful rolling hills of Compton since 1974.")

farms << ferme_bibeau
farms << ferme_d_oree
farms << sanders_farm

# may
asparagus = ProductInfo.create!(name: "asparagus", category: "vegetable", month: 5, co2_saved: 0)

# june
radish = ProductInfo.create!(name: "radish", category: "vegetable", month: 6, co2_saved: 0)
spinach = ProductInfo.create!(name: "spinach", category: "vegetable", month: 6, co2_saved: 0)
strawberry = ProductInfo.create!(name: "strawberry", category: "fruit", month: 6, co2_saved: 0)
lettuce = ProductInfo.create!(name: "lettuce", category: "vegetable", month: 6, co2_saved: 0)
green_onion = ProductInfo.create!(name: "green_onion", category: "vegetable", month: 6, co2_saved: 0)
herb = ProductInfo.create!(name: "herb", category: "vegetable", month: 6, co2_saved: 0)
rhubarb = ProductInfo.create!(name: "rhubarb", category: "fruit", month: 6, co2_saved: 0)

# july
raspberry = ProductInfo.create!(name: "raspberry", category: "fruit", month: 7, co2_saved: 0)
broccoli = ProductInfo.create!(name: "broccoli", category: "vegetable", month: 7, co2_saved: 0)
zucchini = ProductInfo.create!(name: "zucchini", category: "vegetable", month: 7, co2_saved: 0)
beet = ProductInfo.create!(name: "beet", category: "vegetable", month: 7, co2_saved: 0)
kale = ProductInfo.create!(name: "kale", category: "vegetable", month: 7, co2_saved: 0)

# august
carrot = ProductInfo.create!(name: "carrot", category: "vegetable", month: 8, co2_saved: 0)
blueberry = ProductInfo.create!(name: "blueberry", category: "fruit", month: 8, co2_saved: 0)
cantaloupe = ProductInfo.create!(name: "cantaloupe", category: "fruit", month: 8, co2_saved: 0)
cantaloupe = ProductInfo.create!(name: "cantaloupe", category: "fruit", month: 8, co2_saved: 0)
tomato = ProductInfo.create!(name: "tomato", category: "vegetable", month: 8, co2_saved: 0)
bean = ProductInfo.create!(name: "bean", category: "vegetable", month: 8, co2_saved: 0)
leek = ProductInfo.create!(name: "leek", category: "vegetable", month: 8, co2_saved: 0)
eggplant = ProductInfo.create!(name: "eggplant", category: "vegetable", month: 8, co2_saved: 0)

# september
apple = ProductInfo.create!(name: "apple", category: "fruit", month: 9, co2_saved: 0)
pepper = ProductInfo.create!(name: "pepper", category: "vegetable", month: 9, co2_saved: 0)

# october
sweet_potato = ProductInfo.create!(name: "sweet_potato", category: "vegetable", month: 10, co2_saved: 0)
squash = ProductInfo.create!(name: "squash", category: "vegetable", month: 10, co2_saved: 0)
turnip = ProductInfo.create!(name: "turnip", category: "vegetable", month: 10, co2_saved: 0)

# meat
chicken_breast = ProductInfo.create!(name: "chicken_breast", category: "meat", month: 12, co2_saved: 0)
ground_turkey = ProductInfo.create!(name: "ground_turkey", category: "meat", month: 12, co2_saved: 0)
ground_pork = ProductInfo.create!(name: "ground_pork", category: "meat", co2_saved: 0)
ground_beef = ProductInfo.create!(name: "ground_beef", category: "meat", month: 12, co2_saved: 0)

# old seed
tomato_photo = URI.open("https://th.bing.com/th/id/OIG._o3h2oVb035wj82ZFwSr?pid=ImgGn")
tomato = Product.new(name: "tomato", category: "vegetable", unit: "kg", stock: 20, farm: ferme_bibeau, price: 5.51, co2_saved: 0.997891042)
tomato.photo.attach(io: tomato_photo, filename: 'tomato.jpg', content_type: 'image/jpeg')
tomato.save!

onion_photo = URI.open("https://th.bing.com/th/id/OIG.7hsSKMRE04pZ273BG4mI?pid=ImgGn")
onion = Product.new(name: "onion", category: "vegetable", unit: "kg", stock: 40, farm: ferme_d_oree, price: 4.01, co2_saved: 0.28091509)
onion.photo.attach(io: onion_photo, filename: 'onion.jpg', content_type: 'image/jpeg')
onion.save!

turkey = Product.new(name: "turkey", category: "meat", unit: "kg", stock: 90, farm: sanders_farm, price: 7.25, co2_saved: 2.369843236)
turkey.save!

carrot = Product.new(name: "carrot", category: "vegetable", unit: "kg", stock: 40, farm: ferme_bibeau, price: 2.63, co2_saved: 0.258896692)
carrot.save!

pepper = Product.new(name: "pepper", category: "vegetable", unit: "kg", stock: 70, farm: ferme_d_oree, price: 6.11, co2_saved: 0.53757996)
pepper.save!

lamb = Product.new(name: "lamb", category: "meat", unit: "kg", stock: 50, farm: sanders_farm, price: 7.30, co2_saved: 2.212007161)
lamb.save!

trips = []

trip_one = Trip.new(date: DateTime.new(2023,9,15,17,0,0), seat: 3, user: users[2], farm: farms[0], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_one.save!
trips << trip_one

trip_two = Trip.new(date: DateTime.new(2023,8,30,16,0,0), seat: 3, user: users[3], farm: farms[1], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_two.save!
trips << trip_two

trip_three = Trip.new(date: DateTime.new(2023,9,15,12,0,0), seat: 5, user: users[2], farm: farms[2], address: "3050 Boulevard De Portland, Sherbrooke, Quebec J1L 1K1")
trip_three.save!
trips << trip_three

# trip_four = Trip.new(date: DateTime.new(2023,9,16,17,0,0), seat: 3, user: users[2], farm: farms[0], address: "2500 Bd de l'Université, Sherbrooke, QC J1K 2R1")
# trip_four.save!
# trips << trip_four

trip_five = Trip.new(date: DateTime.new(2023,9,20,16,0,0), seat: 3, user: users[3], farm: farms[1], address: "2500, boul. de l'Université Local E1-1043, Pavillon de la vie étudiante, Sherbrooke, QC J1K 2R1")
trip_five.save!
trips << trip_five

trip_six = Trip.new(date: DateTime.new(2023,10,15,12,0,0), seat: 5, user: users[2], farm: farms[2], address: "3050 Boulevard De Portland, Sherbrooke, Quebec J1L 1K1")
trip_six.save!
trips << trip_six

trip_seven = Trip.new(date: DateTime.new(2023,10,10,12,0,0), seat: 5, user: users[2], farm: farms[2], address: "2500 Bd de l'Université, Sherbrooke, QC J1K 2R1")
trip_seven.save!
trips << trip_seven

# trip_eight = Trip.new(date: DateTime.new(2023,9,8,17,0,0), seat: 3, user: users[2], farm: farms[0], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
# trip_eight.save!
# trips << trip_eight

trip_nine = Trip.new(date: DateTime.new(2023,9,30,16,0,0), seat: 3, user: users[3], farm: farms[1], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_nine.save!
trips << trip_nine

seb_order = Order.new(trip: trip_nine, user: seb)
seb_order.save!

nicole_order = Order.new(trip: trip_nine, user: nicole)
nicole_order.save!

# therese_order = Order.new(trip: trip_one, user: therese)
# therese_order.save!

# # seb_lamb = OrderProduct.new(quantity: 10, order: seb_order, product: lamb)
# # seb_lamb.cost = seb_lamb.quantity * seb_lamb.product.price
# # seb_lamb.save!

# # seb_pepper = OrderProduct.new(quantity: 4, order: seb_order, product: pepper)
# # seb_pepper.cost = seb_pepper.quantity * seb_pepper.product.price
# # seb_pepper.save!

# therese_turkey = OrderProduct.new(quantity: 12, order: therese_order, product: turkey)
# therese_turkey.cost = therese_turkey.quantity * therese_turkey.product.price
# therese_turkey.save!

# therese_carrot = OrderProduct.new(quantity: 3, order: therese_order, product: carrot)
# therese_carrot.cost = therese_carrot.quantity * therese_carrot.product.price
# therese_carrot.save!
