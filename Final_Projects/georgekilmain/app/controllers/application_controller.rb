class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  private

  def current_user
  	@current_user ||= Advertiser.find(session[:advertiser_id]) if session[:advertiser_id]
  end
end
