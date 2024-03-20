class PagesController < ApplicationController
  def home
    @alcohol_category = ["whisky", "gin", "brandy"]
    @classic_cocktails = Cocktail.where(type_of: "Classic")
  end
end
