class EditGroups < ActiveRecord::Migration[7.1]
  def change
    change_table :chats do |t|
      t.remove :members
    end
  end
end
