class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.order("RANDOM()").limit(6)
    @classic_cocktails = ClassicCocktail.order("RANDOM()").limit(6)
  end

  def cocktail_map; end

end
