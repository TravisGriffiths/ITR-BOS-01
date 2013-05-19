class CreateArts < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :artname
      t.string :artpath
      t.float :artprice
      t.string :mediatype
      t.string :artsize
      t.text :metadata

      t.timestamps
    end
  end
end
