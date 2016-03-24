class CreateFeatureds < ActiveRecord::Migration
  def change
    create_table :featureds do |t|
      t.references :villa, index: true
      t.references :feature, index: true

      t.timestamps
    end
  end
end
