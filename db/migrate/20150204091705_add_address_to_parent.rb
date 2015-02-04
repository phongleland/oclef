class AddAddressToParent < ActiveRecord::Migration
  def change
    add_reference :parents, :address, index: true
    add_foreign_key :parents, :addresses
  end
end
