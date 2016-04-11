class ChangeDateTypeForYearInContracts < ActiveRecord::Migration
    def up
      change_column(:contracts, :year, :string)
    end
    
    def down
      change_column(:contracts, :year, :date)
    end
end
