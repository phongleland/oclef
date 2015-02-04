class RemoveLocationFromParent < ActiveRecord::Migration
  def change
    remove_column :parents, :location_id, :integer
  end
end
