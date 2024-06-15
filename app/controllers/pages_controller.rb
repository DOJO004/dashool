class PagesController < ApplicationController
  before_action :check_profile, only: :home
  def home
    @cocktails = Cocktail.all
  end

  def cocktail_map; end

  def check_profile
    if current_user && current_user.profile.blank?
      name = current_user.full_name || current_user.email
      name = unique_name(name) if Profile.exists?(name: name)
      current_user.create_profile!(name: name, avatar: default_avatar)
    end
  end
  
  private
  
  def unique_name(name)
    "#{name}-#{SecureRandom.hex(4)}" # 在名称后面加上随机字符串
  end

  def default_avatar
    "https://cdn-icons-png.flaticon.com/512/149/149071.png"
  end
end
