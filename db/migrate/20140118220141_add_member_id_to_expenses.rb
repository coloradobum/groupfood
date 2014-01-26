class AddMemberIdToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :member_id, :integer
  end
end
