class School < ActiveRecord::Base
  attr_accessible :content, :gmaps, :latitude, :league, :longitude, :losses, :name, :wins

  has_many :advertisers

  acts_as_gmappable :process_geocoding => false

  def gmaps4rails_address
   "#{name}, #{state}"
  end
end
