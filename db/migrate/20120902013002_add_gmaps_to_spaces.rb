class AddGmapsToSpaces < ActiveRecord::Migration
  def change
  	add_column :spaces, :gmaps, :boolean
  end
end