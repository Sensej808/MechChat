class CreateGroups < ActiveRecord::Migration[7.1]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.integer :members, null: false
      t.timestamps
    end
  end
end
