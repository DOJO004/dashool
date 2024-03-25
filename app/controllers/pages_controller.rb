class PagesController < ApplicationController
  def home
    @alcohol_category = %w[Whisky Gin Brandy Vodka Rum Tequila]
    if (@alcohol_category & [params[:base_wine]]).present?
      @classic_cocktails = Cocktail.where(base_wine: params[:base_wine])
    else
      @classic_cocktails = Cocktail.all
    end
  end
end
