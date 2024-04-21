# frozen_string_literal: true

class CocktailsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @q = Cocktail.ransack(params[:q])
    @cocktails = @q.result.order(name: :asc)
    @classic_cocktails = ClassicCocktail.order("RANDOM()").limit(6)
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
    params.require(:cocktail).permit(:name, :introduce, :type_of, :images, :history, :production_method,
                                     :drink_style, :skill,)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
