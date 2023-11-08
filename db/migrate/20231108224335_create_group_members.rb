class CreateGroupMembers < ActiveRecord::Migration[7.1]
  def change
    create_table :group_members do |t|
      t.belongs_to :group
      t.belongs_to :user
      t.integer :user_role
      t.timestamps
    end
  end
end
