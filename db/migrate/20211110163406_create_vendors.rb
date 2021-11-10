class CreateVendors < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :username
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :image
      t.integer :zipcode
      t.string :venmoname

      t.timestamps
    end
  end
end
