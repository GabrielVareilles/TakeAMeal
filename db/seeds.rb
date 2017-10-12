puts 'Creating restaurants...'
r = Restaurant.create!(
  name:         "Epicure au Bristol",
  address:      "112 rue du Fg St-Honoré",
  address2: "",
  email: "epicdure@gmail.com",
  encrypted_password: "epicure",
  password: "epicure",
  phone_number: "+33 6 89 83 79 52",
  category: "Francais",
  max_meal: 15,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "https://www.cote2boeuf.fr/le-blog/wp-content/uploads/2016/09/IMG_7813.jpg"
r.save

r = Restaurant.create!(
  name:         "La truffière",
  address:      "4 rue Blainville",
  address2: "",
  email: "truffidere@gmail.com",
  encrypted_password: "epicurtt",
  password: "epicure",
  phone_number: "+33 6 89 84 49 62",
  category: "Hongrois",
  max_meal: 20,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "http://lesgrappes.leparisien.fr/wp-content/uploads/2015/12/16821015905_2b6b543f91_c-compressor.jpg"
r.save
r = Restaurant.create!(
  name:         "Le pré catelan",
  address:      "route de Suresnes 75016 Paris",
  address2: "",
  email: "catdelan@gmail.com",
  encrypted_password: "epicwweurtt",
  password: "epicure",
  phone_number: "+33 6 89 33 73 09",
  category: "Basque",
  max_meal: 10,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "http://static.cuisineaz.com/680x357/i67198-specialites-basques.jpg"
r.save
r = Restaurant.create!(
  name:         "Chez Jacques",
  address:      "12 Allee du Paradis",
  address2: "",
  email: "jacques@gmail.com",
  encrypted_password: "paradise",
  password: "epicure",
  phone_number: "+33 6 89 83 72 52",
  category: "Francais",
  max_meal: 15,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "https://image.afcdn.com/recipe/20141014/47748_w420h344c1cx800cy800.jpg"
r.save
r = Restaurant.create!(
  name:         "Chez Alphonse",
  address:      "20 bis rue Inkermann",
  address2: "",
  email: "20bis@gmail.com",
  encrypted_password: "attention",
  password: "epicure",
  phone_number: "+33 6 89 84 49 63",
  category: "Grec",
  max_meal: 20,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "https://www.atelierdeschefs.com/media/recette-e15183-salade-grecque.jpg"
r.save
r = Restaurant.create!(
  name:         "New Delhi",
  address:      "Rue de la Pompe",
  address2: "",
  email: "lapompe@gmail.com",
  encrypted_password: "pompage",
  password: "epicure",
  phone_number: "+33 6 89 33 73 09",
  category: "Indien",
  max_meal: 10,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "http://storenotrefamilleprod.blob.core.windows.net/images/cms/recette/13314/13314_large.jpg"
r.save
r = Restaurant.create!(
  name:         "La Fumeuse",
  address:      "112 rue du Fg St-Honoré",
  address2: "",
  email: "epicdurde@gmail.com",
  encrypted_password: "epicure",
  password: "epicure",
  phone_number: "+33 6 89 83 79 52",
  category: "Francais",
  max_meal: 15,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "http://img.taste.com.au/vOr3IetI/taste/2016/11/pea-and-brie-quiche-80007-1.jpeg"
r.save
r = Restaurant.create!(
  name:         "Samourai",
  address:      "4 rue Blainville",
  address2: "",
  email: "truffidssewre@gmail.com",
  encrypted_password: "epicurtt",
  password: "epicure",
  phone_number: "+33 6 89 84 49 62",
  category: "Japonais",
  max_meal: 20,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "https://eatzer.com/wp-content/uploads/2016/09/awesome-sushi-720x513.jpg"
r.save
r = Restaurant.create!(
  name:         "Tokyo Palace",
  address:      "route de Suresnes 75016 Paris",
  address2: "",
  email: "catdwesslan@gmail.com",
  encrypted_password: "epicwweurtt",
  password: "epicure",
  phone_number: "+33 6 89 33 73 09",
  category: "Japonais",
  max_meal: 10,
  city: "Lille",
  post_code: "59000"
)
r.remote_photo_url = "https://thesushistation.files.wordpress.com/2015/08/wpid-img_6245.jpg"
r.save
puts 'Finished!'

puts 'Creating Users...'
User.create!(
  first_name: "Valentin",
  last_name: "Le Blan",
  phone_number: "06 89 83 79 52",
  email: "valendtinleblan@gmail.com",
  encrypted_password: "episd",
  password: "epicure",
  company: "Take a Meal",
  post_code: "59000",
)
User.create!(
  first_name: "Paul",
  last_name: "Webanck",
  phone_number: "06 89 83 79 55",
  email: "polowedbanck@gmail.com",
  encrypted_password: "epicwweusddtt",
  password: "epicure",
  company: "Take a Meal",
  post_code: "59000"
)
User.create!(
  first_name: "Julien",
  last_name: "Corbin",
  phone_number: "06 89 83 79 53",
  email: "crobdin@gmail.com",
  encrypted_password: "epicwwsseurtt",
  password: "epicure",
  company: "Take a Meal",
  post_code: "59000"
)
puts 'Finished'

puts 'Creating Meals...'
r=Meal.create!(
  name: "Burger Caviar",
  description: "Delicieux Burger, parfume au caviar d'aubergine et a la truffe d'oie",
  restaurant_id: 1,
)
r.remote_photo_url = "http://neuroticmommy.com/wp-content/uploads/2015/09/The-Best-Veggie-Burger-with-Radicchio-Slaw2.jpg"
r.save
r=Meal.create!(
  name: "Filet de Boeuf a l'ail",
  description: "Succulent filet de boeuf, saisi une premiere fois a la poele puis revenu dans du beurre a l'ail.",
  restaurant_id: 2,

)
r.remote_photo_url = "https://www.metro.ca/userfiles/image/recipes/Biftecks-faux-filet-b%C5%93uf-sauce-barbecue-oignon-427.jpg"
r.save
r=Meal.create!(
  name: "Homard grille",
  description: "Homard de Bretagne saisi au grill Japonais.",
  restaurant_id: 3,
)
r.remote_photo_url = "http://img.cac.pmdstatic.net/fit/http.3A.2F.2Fwww.2Ecuisineactuelle.2Efr.2Fvar.2Fcui.2Fstorage.2Fimages.2Frecettes-de-cuisine.2Frecettes-pour-tous.2Ffamiliale.2Fhomard-grille-et-salade-d-asperges.2F548565-4-fre-FR.2Fhomard-grille-et-salade-d-asperges.2Ejpg/300x225/quality/80/crop-from/center/homard-grille-et-salade-d-asperges.jpeg"
r.save
r=Meal.create!(
  name: "Welsh Revisite",
  description: "Jamais un welsh n'avait ete aussi leger. Le Chef Jacques s'est surpasse pour nous proposer ce welsh d'un nouveau genre. Laissez-vous tenter.",
  restaurant_id: 4,
)
r.remote_photo_url = "http://www.lechtimarche.fr/1345-1400-large/recette-traditionnelle-nord-welsh-de-chnord.jpg"
r.save
r=Meal.create!(
  name: "El Regina del Papa",
  description: "Une pate travaillee avec force et rigueur, une sauce tomate maison, des champignons de la region Parisienne, un parmesan reggiano comme il ne s'en fait plus, et le non moins celebre Pata Negra Bellota. El Regina, del Papa.",
  restaurant_id: 5,
  )
r.remote_photo_url = "http://demandware.edgesuite.net/aahv_prd/on/demandware.static/-/Sites-catalog-picard/default/dw95a7a0c0/produits/entrees-tartes-salades/edition/000000000000037461_E1.jpg"
r.save
r=Meal.create!(
  name: "Poulet Biryani",
  description: "Le Poulet biryani est particulièrement apprécié pour son onctuosité, ses touches sucrées-salées et ses différentes saveurs qui se marient parfaitement. Le poulet Biryani se prépare à l'aide de canelle, de fenouil, de cardamome, de gingembre. Mais ce n'est pas tout puisqu'il est indispensable d'ajouter à la préparation des oignons, de la tomate, du curcuma, du cumin en poudre, de citron, de noix de cajou et d'un yaourt. ",
  restaurant_id: 6,
  )
r.remote_photo_url = "https://www.atelierdeschefs.com/media/recette-e20927-biryani-au-poulet.jpg"
r.save
r=Meal.create!(
  name: "Boeuf Bourguignon",
  description: "Grand classique de la cuisine bourguignonne, cuisiné au vin rouge de Bourgogne, avec une garniture de champignons, de petits oignons et de lardons",
  restaurant_id: 7,
)
r.remote_photo_url = "http://static.cuisineaz.com/400x320/i94631-boeuf-bourguignon.jpg"
r.save
r=Meal.create!(
  name: "Cascade de Saumon",
  description: "Aventurier dans l'ame, le Samourai aime se raffraichir au bas des cascades du Mont Fuji. Grand amateur de Saumon, il decida un jour d'inventer la Cascade de Saumon.",
  restaurant_id: 8,
)
r.remote_photo_url ="http://www.shogunsushi.fr/wp-content/uploads/2017/09/sashimisaumon.jpg"
r.save
r=Meal.create!(
  name: "Tsunami de Thon",
  description: "Sashimi au thon avec son bol de riz, sa salade et sa soupe.",
  restaurant_id: 9,
)
r.remote_photo_url = "http://ginkosushi.lu/wp-content/uploads/2016/03/sashimi-thon-16p-2b.jpg"
r.save
puts 'Finished'


puts 'Creating Orders...'
Order.create!(
  pick_up_time: "12h30 - 12h45",
  status: "Delivered",
  user_id: 1,
  meal_id: 1
)

Order.create!(
  pick_up_time: "12h45 - 13h00",
  status: "Delivered",
  user_id: 2,
  meal_id: 2
)

Order.create!(
  pick_up_time: "12h15 - 12h30",
  status: "Delivered",
  user_id: 2,
  meal_id: 2
)
puts 'Finished'

puts 'Creating Reviews...'
Review.create!(
  rating: 5,
  comment: "Burger absolument incroyable. Jamais je n'avais goute a un met aussi savoureux et delicat",
  order_id:1
)

Review.create!(
  rating: 4,
  comment: "Ma mere me faisait souvent de la viande lorsque je venais dejeuner le dimanche. Grace a vous, j'ai pu retrouver ces saveurs. Merci Take A Meal !",
  order_id:2
)

Review.create!(
  rating: 5,
  comment: "Originaire de Bretagne, je revais depuis maintenant longtemps de retrouver les sensations extraordinaires que procurent la chair de homard grille. Je suis definitivement Fan de votre concept.",
  order_id: 3
)

puts 'Finished'

puts 'Creating Subscription'
Subscription.create!(
  name: "Offre decouverte",
  meal_per_month: 12,
  price_cents: 76.8
)

Subscription.create!(
  name: "Offre habitue",
  meal_per_month: 20,
  price_cents: 119.8
)

puts "Finished"
