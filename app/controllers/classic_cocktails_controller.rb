class ClassicCocktailsController < ApplicationController
  before_action :set_classic_cocktail, only: %i[show edit update destroy]

  def index
    @q = ClassicCocktail.ransack(params[:q])
    @classic_cocktails = @q.result.order(name: :asc)
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update
    if @classic_cocktail.update(classic_cocktail_params)
      redirect_to @classic_cocktail, notice: "Classic cocktail was successfully updated."
    else
      flash.now[:alert] = @classic_cocktail.errors.full_messages
      render :edit
    end
  end

  def destroy; end

  private

  def classic_cocktail_params
    params.require(:classic_cocktail).permit(:name, :skill, :garnish, :glass, :history, :ingredient, :method, :image)
  end

  def set_classic_cocktail
    @classic_cocktail = ClassicCocktail.find(params[:id])
  end
end
