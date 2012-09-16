class AddLatitudeToSpaces < ActiveRecord::Migration
  def change
  	add_column :spaces, :latitude,  :float
  end
end