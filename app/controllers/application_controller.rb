class ApplicationController < ActionController::Base
  before_action :set_locale
  before_action :set_current_uesr

  def set_locale
    # 可以將 ["en", "zh-CN"] 設定為 VALID_LANG 放到 config/environment.rb 中
    if params[:locale] && I18n.available_locales.include?(params[:locale].to_sym)
      session[:locale] = params[:locale]
    end

    I18n.locale = session[:locale] || I18n.default_locale
  end

  def set_current_uesr
    @current_user = current_user
  end
end
