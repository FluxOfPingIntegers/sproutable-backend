class CreateLocations < ActiveRecord::Migration[6.1]
  def change
    create_table :locations do |t|
      t.integer :usda_id
      t.string :yelp_id
      t.string :name
      t.string :description
      t.string :address
      t.integer :zipcode
      t.string :hours
      t.integer :fee
      t.integer :pass
      t.string :image

      t.timestamps
    end
  end
end
