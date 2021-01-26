require 'open-uri'

puts 'Destroying data...'

Ingredient.destroy_all

puts 'Data destroyed!'

puts 'Generating new data...'

ingredients_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_ingredients = open(ingredients_url).read

ingredients = JSON.parse(serialized_ingredients)['drinks']

manual_ingredients = ['Angostura', 'Bitters Campari']

ingredients.each do |ingredient|
  generated = Ingredient.create!(name: ingredient['strIngredient1'])
  puts "#{generated.id} #{generated.name} generated"
end

manual_ingredients.each do |ingredient|
  generated = Ingredient.create!(name: ingredient)
  puts "#{generated.id} #{generated.name} generated"
end

puts 'All data generated!'
