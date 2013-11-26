class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.float :expense
      t.text :description

      t.timestamps
    end
  end
end
