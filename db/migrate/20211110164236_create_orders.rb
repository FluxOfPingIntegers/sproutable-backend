class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :total
      t.string :date

      t.timestamps
    end
  end
end
