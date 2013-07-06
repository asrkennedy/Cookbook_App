# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Ingredient.destroy_all

Recipe.destroy_all

      i1 = Ingredient.create! name: 'tomato'
      i2 = Ingredient.create! name: 'cheese'
      i3 = Ingredient.create! name: 'spaghetti'
      i4 = Ingredient.create! name: 'macaroni pasta'
      i5 = Ingredient.create! name: 'flour'
      i6 = Ingredient.create! name: 'salt'
      i7 = Ingredient.create! name: 'pepper'
      i8 = Ingredient.create! name: 'Italian herbs and seasonings'
      i9 = Ingredient.create! name: 'basil'
      i10 = Ingredient.create! name: 'ham'
      i11 = Ingredient.create! name: 'onions'
      i12 = Ingredient.create! name: 'milk'
      i13 = Ingredient.create! name: 'parmesan'

      r1 = Recipe.create! name: 'Macaroni and Cheese', cook_time: "1 hour", instructions: 'Combine the macaroni with the cheese and bake for 1 hour.'

      r2 = Recipe.create! name: 'Pizza', cook_time: "1.5 hours", instructions: 'Make the dough, roll it out flat, cover with tomato sauce and cheese and add any desired toppings. Place in oven for 1 hour.'

      r3 = Recipe.create! name: 'Spaghetti', cook_time: "20 minutes", instructions: 'Place spaghetti in boiling water for 12 minutes, then add tomato sauce and herbs and heat for a further 3 minutes. Remove from heat and place in a bowl for eating. Add parmesan cheese and fresh basil.'



