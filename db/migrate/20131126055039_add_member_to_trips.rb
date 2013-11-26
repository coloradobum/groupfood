class AddMemberToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :member, :integer
  end
end
