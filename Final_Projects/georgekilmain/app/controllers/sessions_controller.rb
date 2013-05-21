class SessionsController < ApplicationController
  def new
  end

  def create 
  	advertiser = Advertiser.authenticate(params[:email], params[:password])
  	if advertiser
  		session[:advertiser_id] = advertiser.id
  		redirect_to admin_panel
  	else
  		flash.now.alert = "Invalid Email or Password"
  		render "new"
  	end
  end

  def destroy
  	session[:advertiser_id] = nil
  	redirect_to root_url, :notice => "logged out"
  end

  def admin_panel
    current_user 
  end
end
