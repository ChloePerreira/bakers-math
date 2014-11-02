class RecipesController < ApplicationController

  def new
    @recipe = Recipe.new
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
  
  def create
    @recipe = Recipe.new(params.require(:recipe).permit(:title, :public, :user_id))
    if @recipe.save
      redirect_to dashboard_path
    else
      render :new  
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy
    redirect_to dashboard_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(params.require(:recipe).permit(:title, :public))
      redirect_to dashboard_path
    else
      redirect_to edit_recipe_path(params[:id])
    end
  end

  def public
    @recipes = Recipe.where(public: true)
  end    
end
