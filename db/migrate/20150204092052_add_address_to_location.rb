class AddAddressToLocation < ActiveRecord::Migration
  def change
    add_reference :locations, :address, index: true
    add_foreign_key :locations, :addresses
  end
end
