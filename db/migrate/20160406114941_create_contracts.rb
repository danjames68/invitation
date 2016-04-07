class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :year
      t.date :start_date
      t.date :end_date
      t.decimal :commission
      t.string :currency
      t.text :contract
      t.text :payment_terms
      t.string :week_start
      t.references :owner, index: true
      t.references :villa, index: true

      t.timestamps
    end
  end
end
