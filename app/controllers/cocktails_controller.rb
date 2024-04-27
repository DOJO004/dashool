# frozen_string_literal: true

class CocktailsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @cocktails = Cocktail.order("RANDOM()").limit(6)
    @classic_cocktails = ClassicCocktail.order("RANDOM()").limit(6)
  end

  def show
    @likes = @cocktail.likes.count
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = current_user.cocktails.build(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail, notice: "Cocktail was successfully created."
    else
      flash.now[:alert] = "Cocktail was not created."
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
    params.require(:cocktail).permit(:name, :skill, :base_wine, :introduce, images: [])
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
