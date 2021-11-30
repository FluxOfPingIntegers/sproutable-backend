class AddWebsiteToVendors < ActiveRecord::Migration[6.1]
  def change
    add_column :vendors, :website, :string
  end
end
