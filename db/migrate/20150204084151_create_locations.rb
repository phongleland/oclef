class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.references :school, index: true
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :province
      t.string :postal_code
      t.string :country
      t.string :telephone

      t.timestamps null: false
    end
    add_foreign_key :locations, :schools
  end
end
