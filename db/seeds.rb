require 'open-uri'

puts 'Destroying data...'

Ingredient.destroy_all

puts 'Data destroyed!'

puts 'Generating new data...'
ingredients_url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'

serialized_ingredients = open(ingredients_url).read

ingredients = JSON.parse(serialized_ingredients)['drinks']

ingredients.each do |ingredient|
  Ingredient.create!(name: ingredient['strIngredient1'])
  # p ingredient["strIngredient1"]
end
