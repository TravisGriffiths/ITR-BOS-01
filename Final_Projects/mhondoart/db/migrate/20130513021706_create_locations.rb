class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :lname
      t.float :latitude
      t.float :longitude
      t.text :locationMetadata

      t.timestamps
    end
  end
end
