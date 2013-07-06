class RemoveIdFromIngredientsRecipes < ActiveRecord::Migration
  def up
    remove_column :ingredients_recipes, :id
  end

  def down
    add_column :ingredients_recipes, :id, :string
    add_index :ingredients_recipes, :id
  end
end
