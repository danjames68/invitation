class AddSlugToVillas < ActiveRecord::Migration
  def change
    add_column :villas, :slug, :string
  end
end
