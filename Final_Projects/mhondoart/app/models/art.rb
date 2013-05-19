class Art < ActiveRecord::Base
  attr_accessible :artname, :artpath, :artprice, :artsize, :mediatype, :metadata
end
