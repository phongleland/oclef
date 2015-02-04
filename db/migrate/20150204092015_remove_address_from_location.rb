class RemoveAddressFromLocation < ActiveRecord::Migration
  def change
    remove_column :locations, :street_1, :string
    remove_column :locations, :street_2, :string
    remove_column :locations, :city, :string
    remove_column :locations, :province, :string
    remove_column :locations, :postal_code, :string
    remove_column :locations, :country, :string
  end
end
