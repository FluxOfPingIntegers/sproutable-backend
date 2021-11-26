class AddStallRefToItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :stall, foreign_key: true
  end
end
