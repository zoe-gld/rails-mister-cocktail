# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

result = RestClient.get('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(result.body, symbolize_names: true)

puts "Cleaning ingredients"

Ingredient.destroy_all

puts "Creating ingredients"

json[:drinks].each do |n|
  Ingredient.create(name: n[:strIngredient1])
end

puts "Done!"
