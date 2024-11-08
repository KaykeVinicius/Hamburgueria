class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  around_action :switch_locale

  private
  
  def default_url_options
    { locale: I18n.locale }
  end
  
def switch_locale(&action)
  locale = params[:locale] || I18n.default_locale
  I18n.with_locale(locale, &action)
end

  allow_browser versions: :modern
end
