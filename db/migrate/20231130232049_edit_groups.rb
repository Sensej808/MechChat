class EditGroups < ActiveRecord::Migration[7.1]
  def change
    change_table :groups do |t|
      t.remove :members
    end
  end
end
