class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :category
      t.string :description
      t.string :image
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
