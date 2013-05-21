class ChangeSchoolIdFormatInAdvertisers < ActiveRecord::Migration
  def change
  	change_column :advertisers, :school_id, :integer
  end

end
