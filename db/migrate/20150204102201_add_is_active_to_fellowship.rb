class AddIsActiveToFellowship < ActiveRecord::Migration
  def change
    add_column :fellowships, :is_active, :boolean
  end
end
