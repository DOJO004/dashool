class PagesController < ApplicationController
  before_action :check_profile, only: :home
  def home
    @cocktails = Cocktail.order("RANDOM()").limit(4)
    @classic_cocktails = ClassicCocktail.order("RANDOM()").limit(4)
  end

  def cocktail_map; end

  private

  def check_profile
    if current_user && current_user.profile.blank?
      current_user.create_profile!(name: current_user.full_name || current_user.email)
    end
  end
end
