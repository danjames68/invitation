class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
      t.string :title
      t.string :name
      t.string :surname
      t.string :company
      t.text :address
      t.string :postcode
      t.string :country
      t.string :phone
      t.string :mobile
      t.string :email
      t.string :language
      t.text :notes
      t.text :private_notes

      t.timestamps
    end
  end
end
