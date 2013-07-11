class Recipe < ActiveRecord::Base
  belongs_to :category
  has_many :ingredients_recipes
  has_many :ingredients, :through => :ingredients_recipes

  attr_accessible :cook_time, :instructions, :name, :recipe_image, :category_id, :ingredients_recipes_attributes

  accepts_nested_attributes_for :ingredients_recipes, allow_destroy: true

  validates :name, presence: true, uniqueness: true
  mount_uploader :recipe_image, RecipeImageUploader

end
