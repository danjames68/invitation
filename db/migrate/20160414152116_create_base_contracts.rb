class CreateBaseContracts < ActiveRecord::Migration
  def change
    create_table :base_contracts do |t|
      t.integer :paragraph_number
      t.text :paragraph
      t.string :language

      t.timestamps
    end
  end
end
