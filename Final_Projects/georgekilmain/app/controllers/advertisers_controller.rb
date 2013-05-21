class AdvertisersController < ApplicationController
   def new
    @advertiser = Advertiser.new
  end

  def create
    @advertiser = Advertiser.create(params[:advertiser])
    if @advertiser.save
      redirect_to root_url
    else
      render "new"
    end
  end

  def admin_panel
    #@advertiser = Advertiser.find(1)
  end

  def show
    @school = Advertiser.select("DISTINCT school_id, *")
    #@advertiser = Advertiser.find(params[:id])
  end

  def update
    @advertiser = Advertiser.find(params[:id])
    if @advertiser.update_attributes(params[:advertiser])
      redirect_to root_url
    else
      render "show"
    end
  end
end
