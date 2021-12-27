class AddDateToStalls < ActiveRecord::Migration[6.1]
  def change
    add_column :stalls, :date, :string
  end
end
