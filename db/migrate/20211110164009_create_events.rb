class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :usda_id
      t.string :yelp_id
      t.string :name
      t.string :description
      t.string :address
      t.integer :zipcode
      t.string :hours
      t.string :fee
      t.string :pass
      t.string :date
      t.string :image

      t.timestamps
    end
  end
end
