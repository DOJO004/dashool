class PagesController < ApplicationController
  def home
    @cocktails = Cocktail.order("RANDOM()").limit(4)
    @classic_cocktails = ClassicCocktail.order("RANDOM()").limit(4)
  end

  def cocktail_map; end

end
