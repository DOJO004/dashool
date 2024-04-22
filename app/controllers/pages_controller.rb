class PagesController < ApplicationController
  def cocktail_map
  end

  def search
    search_value = params[:search_value]
    cocktails = Cocktail.where("LOWER(name) LIKE ?", "%#{search_value.downcase}%").order(name: :asc)
    classic_cocktails = ClassicCocktail.where("LOWER(name) LIKE ?", "%#{search_value.downcase}%").order(name: :asc)

    @data = cocktails + classic_cocktails
  end
end
