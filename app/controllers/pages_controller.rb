class PagesController < ApplicationController
  def home
    @alcohol_category = %w[Whisky Gin Brandy Vodka Rum Tequila]
    @classic_cocktails = if (@alcohol_category & [params[:base_wine]]).present?
                           Cocktail.where(base_wine: params[:base_wine])
                         else
                           Cocktail.all
                         end
  end
end
