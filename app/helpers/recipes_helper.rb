module RecipesHelper
  def checkbox(recipe, ingredients)
    check_box_tag "recipe[ingredient_ids][]", ingredient.id, ingredient.include?(recipe.ingredients.to_a)
  end
end
