class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.text :name

      t.timestamps
    end
  end
end