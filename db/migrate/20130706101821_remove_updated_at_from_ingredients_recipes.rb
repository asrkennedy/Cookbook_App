class RemoveUpdatedAtFromIngredientsRecipes < ActiveRecord::Migration
  def up
    remove_column :ingredients_recipes, :updated_at
  end

  def down
    add_column :ingredients_recipes, :updated_at, :datetime
  end
end
