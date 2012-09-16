class AddLongitudeToSpaces < ActiveRecord::Migration
  def change
  	add_column :spaces, :longitude, :float
  end
end