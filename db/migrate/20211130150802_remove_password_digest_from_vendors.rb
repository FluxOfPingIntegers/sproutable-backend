class RemovePasswordDigestFromVendors < ActiveRecord::Migration[6.1]
  def change
    remove_column :vendors, :password_digest
  end
end
