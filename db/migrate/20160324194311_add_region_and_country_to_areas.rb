class AddRegionAndCountryToAreas < ActiveRecord::Migration
  def change
    add_column :areas, :region, :string
    add_column :areas, :country, :string
  end
end
