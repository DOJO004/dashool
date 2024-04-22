class PagesController < ApplicationController
  def cocktail_map
  end

  def search
    search_value = params[:search_value]
    if search_value.nil?
      cocktails = Cocktail.all
      classic_cocktails = ClassicCocktail.all
    else
      cocktails = Cocktail.where("LOWER(name) LIKE ?", "%#{search_value.downcase}%").order(name: :asc)
      classic_cocktails = ClassicCocktail.where("LOWER(name) LIKE ?", "%#{search_value.downcase}%").order(name: :asc)
    end

    @data = cocktails + classic_cocktails
  end
end
