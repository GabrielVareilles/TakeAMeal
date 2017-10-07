# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating restaurants...'
Restaurant.create!(
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
Restaurant.create!(
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
Restaurant.create!(
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
Meal.create!(
  name: "Burger Caviar",
  description: "Delicieux Burger, parfume au caviar d'aubergine et a la truffe d'oie",
  restaurant_id: 1
)

Meal.create!(
  name: "Filet de Boeuf a l'ail",
  description: "Succulent filet de boeuf, saisi une premiere fois a la poele puis revenu dans du beurre a l'ail.",
  restaurant_id: 2
)

Meal.create!(
  name: "Homard grille",
  description: "Homard de Bretagne saisi au grill Japonais.",
  restaurant_id: 3
)
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
