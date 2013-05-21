class CreateAdvertisers < ActiveRecord::Migration
  def change
    create_table :advertisers do |t|
      t.references :schools

      t.string :business_name
      t.string :url
      t.string :advertisement
      t.string :street
      t.string :city
      t.string :state
      t.string :zipcode
      t.string :email
      t.string :password_salt
      t.string :password_hash
      t.string :contact_name
      t.string :school_id

      t.timestamps
    end
    add_index("advertisers", "school_id")
  end
end
