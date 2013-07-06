class RecipesController < ApplicationController

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_attributes(params[:recipe])
    @recipe.save
    redirect_to @recipe
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(params[:recipe])
    @recipe.save
    redirect_to @recipe
  end

def destroy
  @recipe = Recipe.find(params[:id])
  @recipe.destroy
  redirect_to recipes_path
end

end