class Location < ActiveRecord::Base
  attr_accessible :latitude, :lname, :locationMetadata, :longitude
end
