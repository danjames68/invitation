class AddExtraImageFieldsToVillas < ActiveRecord::Migration
  def up
      add_column :villas, :image_content_type, :string
      add_column :villas, :image_file_size, :integer
      add_column :villas, :image_updated_at, :datetime
  end
  
  def down
    remove_column :villas, :image_content_type, :string
    remove_column :villas, :image_file_size, :integer
    remove_column :villas, :image_updated_at, :datetime
  end
end
