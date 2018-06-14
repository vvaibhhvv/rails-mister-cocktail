require 'json'
require 'open-uri'

Ingredient.destroy_all

result = JSON.parse(open('http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read)
drinks = result['drinks']

drinks.each do |drink|
  drink.each do |k, v|
  Ingredient.create(name: v)
  end
end




