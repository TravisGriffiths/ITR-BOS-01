class Book < ActiveRecord::Base
  attr_accessible :title

  belongs_to :author

end
