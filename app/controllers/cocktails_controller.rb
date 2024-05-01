# frozen_string_literal: true
require "image_processing/mini_magick"

class CocktailsController < ApplicationController
  before_action :authenticate_user!, except: %i[index show]
  before_action :set_cocktail, only: %i[show edit update destroy]

  def index
    @q = Cocktail.ransack(params[:q])
    @cocktials = @q.result
  end

  def show
    @likes = @cocktail.likes.count
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = current_user.cocktails.build(cocktail_params)

    if params[:cocktail][:images].present?
      params[:cocktail][:images].each do |image|
        next if image.blank?  
        ok_image = resize_image(image, 1920, 1080)
        puts "** #{File.size(ok_image.path)}"
      end
    end
    
    if @cocktail.save
      redirect_to @cocktail, notice: "Cocktail was successfully created."
    else
      flash.now[:alert] = @cocktail.errors.full_messages
      render :new
    end
  end

  def edit; end
  
  def update

    if @cocktail.update(cocktail_params)
      redirect_to cocktail_path(params[:id])
    else
      flash.now[:alert] = @cocktail.errors.full_messages
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

  def resize_image(image, max_width, max_height)
    pipeline = ImageProcessing::MiniMagick.source(image)
    pipeline.resize_to_limit!(max_width, max_height)
  end
end
