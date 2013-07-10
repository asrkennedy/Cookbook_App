class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :ingredients_recipes
  has_many :ingredients, :through => :ingredients_recipes

  attr_accessible :cook_time, :instructions, :name, :ingredient_ids, :recipe_image, :category_id

  validates :name, presence: true, uniqueness: true
  mount_uploader :recipe_image, RecipeImageUploader

end
