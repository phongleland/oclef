class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_1
      t.string :street_2
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country

      t.timestamps null: false
    end
  end
end
