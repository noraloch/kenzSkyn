class ProductIngredientsController < ApplicationController
  def index
    product_ingredients = ProductIngredient.all
    render json: product_ingredients
  end

  def create
    product_ingredient = ProductIngredient.create(product_ingredient_params)
    render json: product_ingredient
  end

  private

  def product_ingredient_params
    params.require(:product_ingredient).permit(:product_id, :ingredient_id)
  end
end
