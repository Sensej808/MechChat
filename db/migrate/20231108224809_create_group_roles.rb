class CreateGroupRoles < ActiveRecord::Migration[7.1]
  def change
    create_table :group_roles do |t|
      t.string :name, null: false
      t.references :group
      t.timestamps
    end
  end
end
