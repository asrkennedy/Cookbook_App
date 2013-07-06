class RemoveCreatedAtFromIngredientsRecipes < ActiveRecord::Migration
  def up
    remove_column :ingredients_recipes, :created_at
  end

  def down
    add_column :ingredients_recipes, :created_at, :datetime
  end
end
