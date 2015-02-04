class RemoveAddressidFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :address_id, :integer
  end
end
