class CreateStalls < ActiveRecord::Migration[6.1]
  def change
    create_table :stalls do |t|
      t.references :vendor
      t.references :event

      t.timestamps
    end
  end
end
