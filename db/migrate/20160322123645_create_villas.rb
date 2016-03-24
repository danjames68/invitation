class CreateVillas < ActiveRecord::Migration
  def change
    create_table :villas do |t|
      t.string :name
      t.integer :reference
      t.string :address
      t.text :strapline
      t.text :description
      t.string :image_file
      t.integer :sleeps

      t.timestamps
    end
  end
end
