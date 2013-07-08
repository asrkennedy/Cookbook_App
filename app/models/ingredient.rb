class Ingredient < ActiveRecord::Base
  has_many :ingredients_recipes
  has_many :recipes, :through => :ingredients_recipes
  attr_accessible :name

  validates :name, uniqueness: true
end
