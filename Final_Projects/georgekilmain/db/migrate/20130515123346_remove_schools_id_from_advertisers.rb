class RemoveSchoolsIdFromAdvertisers < ActiveRecord::Migration
  def change
  	remove_column :advertisers, :schools_id
  end
end
