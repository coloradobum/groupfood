class AddRelationsToTables < ActiveRecord::Migration
  def change
  	 add_column :members, :trip_id, :integer
  	 add_column :expenses, :member_id, :integer
  end
end
