class AddOwnerRefToVilla < ActiveRecord::Migration
  def change
    add_reference :villas, :owner, index: true
  end
end
