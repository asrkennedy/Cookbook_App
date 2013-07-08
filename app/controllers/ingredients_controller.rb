class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])
    @ingredient.update_attributes(params[:ingredient])
    @ingredient.save
    redirect_to ingredients_path
  end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(params[:ingredient])
    @ingredient.save

     respond_to do |format|
      if @ingredient.save
        format.html { redirect_to @ingredient, notice: 'Ingredient was successfully created.' }
        format.json { render json: @ingredient, status: :created, location: @ingredient}
      else
        format.html { render action: "new"}
        format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

def destroy
  @ingredient = Ingredient.find(params[:id])
  @ingredient.destroy
  redirect_to ingredients_path
end

end