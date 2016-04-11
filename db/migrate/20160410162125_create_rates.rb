class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.date :start_date
      t.date :end_date
      t.string :name
      t.decimal :net
      t.references :contract, index: true

      t.timestamps
    end
  end
end
