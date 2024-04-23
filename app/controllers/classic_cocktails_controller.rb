class ClassicCocktailsController < ApplicationController
  before_action :set_classic_cocktail, only: %i[show edit update destroy]

  def index; end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end

  private

  def classic_cocktail_params
    params.require(:classic_cocktail).permit(:name, :skill, :garnish, :glass, :history, :ingredient, :method)
  end

  def set_classic_cocktail
    @classic_cocktail = ClassicCocktail.find(params[:id])
  end
end
