class RemoveAddressidFromParent < ActiveRecord::Migration
  def change
    remove_column :parents, :address_id, :integer
  end
end
