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
topher_farm = Farm.create!(name: "Topher Farm", address: "6160 rte 143, Waterville, QC", open: true, rating: 4.5, opening_time: 11, closing_time: 17, description: "Topher's Farm in Canada is a thriving agricultural enterprise, known for its diverse range of farm-fresh products that consistently deliver exceptional taste and freshness to customers.")
poucevert_farm = Farm.create!(name: "Les 3 pouces Verts", address: "525 Chem. Chute, Cookshire-Eaton, QC",
                              open: false, rating: 5, opening_time: 7, closing_time: 18,
                              description: "Nous sommes fiers de produire tous nos fruits de manière 100% naturelle.
                                            Nous avons commencé il y a plus de 40 ans avec des pommes et nous avons depuis ajouté des bleuets,
                                            des framboises, des fraises et des groseilles.")
sevigny_farm = Farm.create!(name: "Sévigny Farm", address: "291 Chem. de la Rivière, Saint-François-Xavier-de-Brompton, QC",
                            open: true, rating: 4.8, opening_time: 8, closing_time: 15,
                            description: "Nous sommes fiers de produire tous nos fruits de manière 100% naturelle.
                            Nous avons commencé il y a plus de 40 ans avec des pommes et nous avons depuis ajouté des bleuets, des framboises, des fraises et des groseilles.")
grange_maraichere = Farm.create!(name: "Ferme la grange Maraîchère", address: "1595 Chem. des Pères, Magog, QC",
                                open: true, rating: 4, opening_time: 7, closing_time: 20,
                                description: "Nestled in Magog, Estrie, along the scenic Chemin des Pères tourist route, Ferme Erb is a diversified vegetable farm.
                                They provide a wide array of naturally grown vegetables, striving to offer fresh seasonal products while sharing their deep passion for agriculture.")
la_prucheraie = Farm.create!(name: "La Prucheraie", address: "974 Chem. Arel, Melbourne, QC",
                                open: true, rating: 4.5, opening_time: 10, closing_time: 19,
                                description: "Founded in 1989 by Robert Beaulieu and Joanne Marcil, the farm has been certified organic since 1990, ensuring the organic quality of all its products.")
la_vallee_des_lacs_farm = Farm.create!(name: "La Vallée des Lacs", address: "162 Chem. Georges-Vallières, Sherbrooke, QC",
                                open: true, rating: 5, opening_time: 9, closing_time: 15,
                                description: "Ferme La Vallée des Lacs in Quebec is a charming farm nestled amidst scenic lakes and valleys, committed to producing fresh, local delights.")
croque_saisons = Farm.create!(name: "Croque Saisons", address: "11 QC-108, Lingwick, QC",
                                open: true, rating: 4.6, opening_time: 8, closing_time: 17,
                                description: "Croque-Saisons Farm, founded by two agronomists in the Eastern Townships, encompasses 80 acres of land, featuring 10 acres of organic vegetable cultivation, fruit production,
                                              and pasture-raised cattle, all driven by their passion for sustainable agriculture.")
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

# farm adding a product
Product.create!(farm: ferme_bibeau, product_info: asparagus, unit: "kg", stock: 20, price: 5.99)
Product.create!(farm: ferme_bibeau, product_info: carrot, unit: "kg", stock: 40, price: 2.50)

Product.create!(farm: ferme_d_oree, product_info: radish, unit: "kg", stock: 40, price: 4.99)
Product.create!(farm: ferme_d_oree, product_info: pepper, unit: "kg", stock: 40, price: 5.99)

Product.create!(farm: sanders_farm, product_info: ground_turkey, unit: "kg", stock: 40, price: 7.25)
Product.create!(farm: sanders_farm, product_info: ground_beef, unit: "kg", stock: 40, price: 7.25)


trip_one = Trip.create!(date: DateTime.new(2023,9,15,17,0,0), seat: 3, user: users[2], farm: farms[0], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_two = Trip.create!(date: DateTime.new(2023,8,30,16,0,0), seat: 3, user: users[3], farm: farms[1], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
trip_three = Trip.create!(date: DateTime.new(2023,9,15,12,0,0), seat: 5, user: users[2], farm: farms[2], address: "3050 Boulevard De Portland, Sherbrooke, Quebec J1L 1K1")
trip_four = Trip.create!(date: DateTime.new(2023,9,20,16,0,0), seat: 3, user: users[3], farm: farms[1], address: "2500, boul. de l'Université Local E1-1043, Pavillon de la vie étudiante, Sherbrooke, QC J1K 2R1")
trip_five = Trip.create!(date: DateTime.new(2023,10,15,12,0,0), seat: 5, user: users[2], farm: farms[2], address: "3050 Boulevard De Portland, Sherbrooke, Quebec J1L 1K1")
trip_six = Trip.create!(date: DateTime.new(2023,10,10,12,0,0), seat: 5, user: users[2], farm: farms[2], address: "2500 Bd de l'Université, Sherbrooke, QC J1K 2R1")
trip_seven = Trip.create!(date: DateTime.new(2023,9,30,16,0,0), seat: 3, user: users[3], farm: farms[1], address: "Université De Sherbrooke, Quai D, Sherbrooke, QC J1K 2R1")
