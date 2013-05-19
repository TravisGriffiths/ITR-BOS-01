class CreateGeos < ActiveRecord::Migration
  def change
    create_table :geos do |t|
      t.string :CountryName
      t.string :CityName
      t.integer :CountryId

      t.timestamps
    end
  end
end
