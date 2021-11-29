class AddProductRefAndCartRefToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :product, foreign_key: true
    add_reference :items, :cart, foreign_key: true
  end
end
