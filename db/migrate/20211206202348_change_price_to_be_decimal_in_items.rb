class ChangePriceToBeDecimalInItems < ActiveRecord::Migration[6.1]
  def change
    change_column :items, :price, :decimal, :precision => 6, :scale => 2
  end
end
