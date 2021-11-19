class ChangeZipcodeToBeStringInLocations < ActiveRecord::Migration[6.1]
  def change
    change_column :locations, :zipcode, :string
  end
end
