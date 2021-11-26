class AddUserRefToVendors < ActiveRecord::Migration[6.1]
  def change
    add_reference :vendors, :user, foreign_key: true
  end
end
