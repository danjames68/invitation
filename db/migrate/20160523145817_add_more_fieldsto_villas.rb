class AddMoreFieldstoVillas < ActiveRecord::Migration
  def up
    add_column :villas, :original_name, :string
    add_column :villas, :accommodation, :text
    add_column :villas, :around_the_villa, :text
    add_column :villas, :number_of_bedrooms, :integer
    add_column :villas, :bed_and_bathrooms, :text
    add_column :villas, :rental_day, :string
  end
  
  def down
    remove_column :villas, :original_name, :string
    remove_column :villas, :accommodation, :text
    remove_column :villas, :around_the_villa, :text
    remove_column :villas, :number_of_bedrooms, :integer
    remove_column :villas, :bed_and_bathrooms, :text
    remove_column :villas, :rental_day, :string
  end
end
