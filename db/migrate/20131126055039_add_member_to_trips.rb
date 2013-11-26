class AddMemberToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :member_id, :integer
  end
end
