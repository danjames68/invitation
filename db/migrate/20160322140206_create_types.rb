class CreateTypes < ActiveRecord::Migration
  def change
    create_table :types do |t|
      t.references :villa, index: true
      t.references :collection, index: true

      t.timestamps
    end
  end
end
