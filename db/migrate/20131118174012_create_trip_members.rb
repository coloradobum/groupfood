class CreateTripMembers < ActiveRecord::Migration
  def change
    create_table :trip_members do |t|
      t.string :name
      t.belongs_to :trip, index: true
      t.decimal :expenses
      t.text :description

      t.timestamps
    end
  end
end
