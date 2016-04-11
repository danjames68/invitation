class RemoveOwnerIdFromContracts < ActiveRecord::Migration
    def up
      remove_column :contracts, :owner_id, :integer
    end
    
    def down
      add_column :contract, :owner_id, :integer 
    end
end
