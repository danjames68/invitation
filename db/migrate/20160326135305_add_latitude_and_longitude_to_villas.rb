class AddLatitudeAndLongitudeToVillas < ActiveRecord::Migration
  def change
    add_column :villas, :latitude, :float
    add_column :villas, :longitude, :float
  end
end
