class RenameImageColumnOnVillas < ActiveRecord::Migration
  def change
    rename_column :villas, :image_file, :image_file_name
  end
end
