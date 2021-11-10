class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.string :name
      t.boolean :ordered
      t.integer :total

      t.timestamps
    end
  end
end
