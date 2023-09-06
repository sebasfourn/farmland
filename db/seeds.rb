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
  Sherbrooke, QC", open: true, rating: 4.5, opening_time: 10, closing_time: 24, description: "Ferme Bibeau covers 95 hectares, of which 65 are cultivated and 30 are wooded. There is also an elderberry orchard with an area of one hectare. Within the 65 cultivated hectares, measures to protect biodiversity have been put in place, particularly with regard to the protection of rural birds. The 30 hectares of forest are intended for the integral conservation of the natural environment.")
ferme_d_oree = Farm.create!(name: "Ferme d'Orée", address: "273, Chemin Beaver ridge
  Newport, QC", open: false, rating: 3.5, opening_time: 9, closing_time: 14, description: "We produce grass-fed beef, pastured pork, lamb, eggs, and unpasteurized honey and sell directly to the consumer and through specialized butchers.")
sanders_farm = Farm.create!(name: "Sanders Farm", address: "475 Hyatt's Mills
  Compton, QC", open: true, rating: 4.5, opening_time: 9, closing_time: 15, grass_fed: true, description: "Sanders farm is a family-run, organic fruit and vegetable farm, nestled in the beautiful rolling hills of Compton, in Quebec’s Eastern Townships since 1974.")

farms << ferme_bibeau
farms << ferme_d_oree
farms << sanders_farm

asparagus = URI.open("https://th.bing.com/th/id/OIG.YyZkjirNH9OS5mIK1nAR?pid=ImgGn")
radishes = URI.open("https://th.bing.com/th/id/OIG.k37elAau4xaBUSW1Lx0a?pid=ImgGn")
spinach = URI.open("https://th.bing.com/th/id/OIG.dkA36qJ8fvrIRox.RuTq?pid=ImgGn")
strawberries = URI.open("https://th.bing.com/th/id/OIG.VRrm.Ok0BBOUmQKDLrWy?pid=ImgGn")
lettuce = URI.open("https://th.bing.com/th/id/OIG.STvNF511RgRnHFcd3Lpg?pid=ImgGn")
green_onions = URI.open("https://th.bing.com/th/id/OIG.ZajCoxiP19lcgikvM.Xi?pid=ImgGn")
herbs = URI.open("https://th.bing.com/th/id/OIG.nBWFVM_TTWf_.f9oL2tu?pid=ImgGn")
rhubarb = URI.open("https://th.bing.com/th/id/OIG.E8cfbbPAyoiOX0MlhFBe?pid=ImgGn")
raspberries = URI.open("https://th.bing.com/th/id/OIG.7kLtrexakrFFuVMHZafB?pid=ImgGn")
broccoli = URI.open("https://th.bing.com/th/id/OIG.E1B0iooaDKDBOytsBv3c?pid=ImgGn")
zucchini = URI.open("https://th.bing.com/th/id/OIG.mBHYAohWeTQ8OxF2RrHz?pid=ImgGn")
beets = URI.open("https://th.bing.com/th/id/OIG.fqfWlD.jJ7O89uKnmp4E?pid=ImgGn")
kale = URI.open("https://th.bing.com/th/id/OIG.N7zyUBxV2KUpyxJRc6MF?pid=ImgGn")
carrots = URI.open("https://th.bing.com/th/id/OIG.ihOel5NdmDtrdoQyU.5f?pid=ImgGn")
blueberries = URI.open("https://th.bing.com/th/id/OIG.O15Hwnm2HK9i5QV.BUDg?pid=ImgGn")
cantaloupes = URI.open("https://th.bing.com/th/id/OIG.sjpS47SLg5zjRnrkVrjH?pid=ImgGn")
tomatoes = URI.open("https://th.bing.com/th/id/OIG.k4s6yCy0vCTFdQiYgydQ?pid=ImgGn")
beans = URI.open("https://th.bing.com/th/id/OIG.1nT1cGOVtUGFG5utS3xF?pid=ImgGn")
leeks = URI.open("https://th.bing.com/th/id/OIG.7uGfhNrwi1nmpZ1WmEqM?pid=ImgGn")
eggplant = URI.open("https://th.bing.com/th/id/OIG.4jTT7RUaNUkT8GvSyLi0?pid=ImgGn")
apples = URI.open("https://th.bing.com/th/id/OIG.DJolDewCurXMStLZ4BFl?pid=ImgGn")
pepper = URI.open("https://th.bing.com/th/id/OIG.p1vJ1IqOvXZk5l0EAJhy?pid=ImgGn")
sweet_potatoes = URI.open("https://th.bing.com/th/id/OIG.obDn7ihhDkw4di7s9wsG?pid=ImgGn")
squash = URI.open("https://th.bing.com/th/id/OIG.Moqp_4JtOxc_kgetpfs.?pid=ImgGn")
turnips = URI.open("https://th.bing.com/th/id/OIG.BZMs5MhZUShm491B81ZM?pid=ImgGn")

chicken_breast = URI.open("https://th.bing.com/th/id/OIG.sSvdjAavgxOrtjCdxz6M?pid=ImgGn")
ground_turkey = URI.open("https://th.bing.com/th/id/OIG.yXk4Hd0XZSKNlmJ4Pi10?pid=ImgGn")
ground_pork = URI.open("https://th.bing.com/th/id/OIG.S2.MmPdNoQU8k78lYhee?pid=ImgGn")
ground_beef = URI.open("https://th.bing.com/th/id/OIG.Xp0EdxHI2mYGYm7Eax04?pid=ImgGn")

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

seb_order = Order.new(trip: trip_one, user: seb)
seb_order.save!

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
