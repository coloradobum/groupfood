class AddTripIdToMembers < ActiveRecord::Migration
  def change
    add_column :members, :trip_id, :integer
  end
end
