class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :name
      t.float :latitude
      t.float :longitude
      t.integer :wins
      t.integer :losses
      t.boolean :gmaps
      t.string :league
      t.string :content

      t.timestamps
    end
  end
end
