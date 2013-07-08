class Recipe < ActiveRecord::Base
  has_many :ingredients_recipes
  has_many :ingredients, :through => :ingredients_recipes

  attr_accessible :cook_time, :instructions, :name, :ingredient_ids, :image_url

  validates :name, presence: true, uniqueness: true

end
