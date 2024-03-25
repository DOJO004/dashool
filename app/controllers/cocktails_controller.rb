# frozen_string_literal: true

class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show edit update destroy]
  def index
    @alcohol_category = %w[Whisky Gin Brandy Vodka Rum Tequila]
    @q = Cocktail.ransack(params[:q])
    @classic_cocktails = @q.result
  end

  def show; end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(params[:id])
    else
      render :edit
    end
  end

  def destroy
    @cocktail.destroy
    redirect_to root_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :introduce, :type_of, :main_image, :history, :production_method,
                                     :drink_style, :skill,)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
