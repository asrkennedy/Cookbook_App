class Recipe < ActiveRecord::Base
  has_and_belongs_to_many :ingredients
  attr_accessible :cook_time, :instructions, :name, :ingredient_ids
end
