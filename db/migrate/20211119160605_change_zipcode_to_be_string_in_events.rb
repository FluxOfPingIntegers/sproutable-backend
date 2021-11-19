class ChangeZipcodeToBeStringInEvents < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :zipcode, :string
  end
end
