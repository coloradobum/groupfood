class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :title
      t.decimal :amount
      t.text :comment

      t.timestamps
    end
  end
end
