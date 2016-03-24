class AddAreaRefToVillas < ActiveRecord::Migration
  def change
    add_reference :villas, :area, index: true
  end
end
